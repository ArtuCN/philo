/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philosophers.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:31 by adonato           #+#    #+#             */
/*   Updated: 2024/04/18 14:59:19 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"
// 1 number_of_philosophers 
// 2 time_to_die 
// 3 time_to_eat 
// 4 time_to_sleep
// 5 [number_of_times_each_philosopher_must_eat
// compila cosi: gcc philosophers.c -o philo -pthread
// in questo momento va in sig fault possibili motivi:
// filosofi non sono sincronizzati (probabile)

void *stop(void *arg);

unsigned int	get_time(unsigned int start)
{
	struct timeval	times;

	gettimeofday(&times, NULL);
	return ((unsigned int)((times.tv_sec * 1000 + times.tv_usec / 1000) - start));
}

void print_formatted_time(char *str, t_philosopher *philo)
{
	unsigned int time;
	
	time = get_time(philo->data->start_time);
	
	pthread_mutex_lock(philo->data->writing);
	printf("%d			%d %s\n", time, philo->id, str);
	pthread_mutex_unlock(philo->data->writing);
}


void	*thread_function(void *arg)
{
	t_philosopher	*philosopher;

	philosopher = (t_philosopher *)arg;
	alone_philo(philosopher);
	if (philosopher->id % 2 == 0)
	{
		print_formatted_time("is thinking", philosopher);
		custom_usleep(philosopher->data->time_to_eat);
	}
	while (1)
	{	
		pthread_mutex_lock(philosopher->fork_mtx);
		pthread_mutex_lock(philosopher->next->fork_mtx);
		print_formatted_time("has taken a fork", philosopher);
		is_eating(&philosopher);
		pthread_mutex_unlock(philosopher->next->fork_mtx);
		pthread_mutex_unlock(philosopher->fork_mtx);
		print_formatted_time("is sleeping", philosopher);
		custom_usleep(philosopher->data->time_to_sleep);
		print_formatted_time("is thinking", philosopher);
	}
	return (NULL);
}

void *stop(void *arg)
{
	t_data	*data;
	data = (t_data *)arg;
	struct timeval t;
	long long temp;
	int			i;
	
	i = -1;
	// while (data->philo_init == 0)
	// 	custom_usleep(1);
	
	pthread_mutex_unlock(data->start);
	while (1)
	{
		gettimeofday(&t, NULL);
		temp = t.tv_sec * 1000 + t.tv_usec / 1000;
		if (temp - data->philosophers->last_meal >= data->time_to_die / 1000)
		{
			i = -1;
			print_formatted_time("is dead", data->philosophers);
			while (++i < data->philo_num)
			{
				pthread_mutex_unlock(data->philosophers->fork_mtx);
				pthread_mutex_lock(data->philosophers->fork_mtx);
				data->philosophers = data->philosophers->next;		
				
			}
			i = -1;
			while (++i < data->philo_num)
			{
				pthread_mutex_unlock(data->philosophers->fork_mtx);
				data->philosophers = data->philosophers->next;		
			}
			exit(0);
		}
		if (is_full(data->philosophers))
			exit(0);
	}
}

void	thread_init(t_philosopher **philo)
{
	int	i;
	
	i = 0;
	pthread_mutex_lock((*philo)->data->start);
	(*philo)->data->philo_init = 0;
	while (i++ < (*philo)->data->philo_num)
	{
		pthread_create(&(*philo)->thread, NULL, thread_function, (void *)(*philo));
		(*philo) = (*philo)->next;
	}
	pthread_create(&(*philo)->data->check, NULL, stop, (void *)(*philo)->data);
	pthread_detach((*philo)->data->check);
	i = -1;
	(*philo)->data->philo_init = 1;
	while (++i < (*philo)->data->philo_num)
	{
		(*philo) = (*philo)->next;
		pthread_join((*philo)->thread, NULL);
	}
}



void	create_philo(t_data *data, t_philosopher **philo)
{
	int				i;
	t_philosopher	*new_philo;
	t_philosopher	*prev_philo;
	struct timeval	tmp;
	

	prev_philo = NULL;
	i = -1;
	gettimeofday(&tmp, NULL);
	while (++i < data->philo_num)
	{
		new_philo = (t_philosopher *)malloc(sizeof(t_philosopher));
		if (!new_philo)
			return ;
		new_philo->fork_mtx = malloc(sizeof(mtx_t));
		if (!new_philo->fork_mtx)
			return ;
		if (pthread_mutex_init((new_philo->fork_mtx), NULL) != 0)
			return ;
		new_philo->thread = (pthread_t)malloc(sizeof(pthread_t));
		if (!new_philo->thread)
			return ;
		new_philo->id = i + 1;
		new_philo->data = data;	
		new_philo->meals_counter = 0;
		new_philo->prev = prev_philo;
		new_philo->next = NULL;
		new_philo->last_meal = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
		if (prev_philo == NULL)
		{
			philo[0] = new_philo;
			prev_philo = malloc(sizeof(t_philosopher));
			if (!prev_philo)
				return ;
			prev_philo->next = new_philo;
		}
		else
		{
			prev_philo->next = new_philo;
			new_philo->prev = prev_philo;
		}
		prev_philo = new_philo;
	}
	new_philo->next = philo[0];
	philo[0]->prev = new_philo;
	philo[0]->data->philosophers = philo[0];
}

int	is_hungry(t_philosopher *philo)
{
	if (philo->last_meal <= philo->next->last_meal)
		return (1);
	return(0);
}

long	ft_atol(char *nptr)
{
	long	n;

	n = 0;
	if (nptr == NULL)
		return (-1);
	while (*nptr == 32 || (*nptr >= '\t' && *nptr <= '\r'))
		nptr++;
	if (*nptr == '-' || *nptr == '+')
		nptr++;
	while (*nptr != '\0' && *nptr <= '9' && *nptr >= '0')
	{
		if (*nptr < '0' || *nptr > '9')
			return (-1);
		n *= 10;
		n += (*nptr++ - 48);
	}
	if (n > INT_MAX)
		n = -1;
	return ((int)n);
}

int	check_args(int ac, char **av, t_data *data)
{
	if (ac != 6 && ac != 5)
		return (0);
	if (av[1][0] == '-' || av[2][0] == '-' || av[3][0] == '-' || av[4][0] == '-')
		return (0);
	data->limit_meals = -1;
	data->philo_init = NOT_SINCRONIZED;
	data->philo_num = ft_atol(av[1]);
	data->time_to_die = ft_atol(av[2]) * 1000;
	data->time_to_eat = ft_atol(av[3]);
	data->time_to_sleep = ft_atol(av[4]);
	data->check = (pthread_t)malloc(sizeof(pthread_t));
		if (!data->check)
			return (0);
	data->start = malloc(sizeof(mtx_t));
	data->writing = malloc(sizeof(mtx_t));
	pthread_mutex_init(data->start, NULL);
	pthread_mutex_init(data->writing, NULL);
	if (data->philo_num <= 0 || data->time_to_die <= 0
		|| data->time_to_eat <= 0 || data->time_to_sleep <= 0)
		return (0);
	if (ac == 6)
	{
		data->limit_meals = ft_atol(av[5]);
		if (data->limit_meals <= 0)
			return (0);
	}
	if (data->philo_num <= 0 || data->time_to_die <= 0
		|| data->time_to_eat <= 0 ||
		data->time_to_sleep <= 0)
		return (0);
	return (1);
}

void free_philo(t_philosopher **philo)
{
	t_philosopher	*tmp;
	int i = 0;
	while (i < (*philo)->data->philo_num)
	{
		pthread_mutex_destroy((*philo)->fork_mtx);
		i++;
		free(*philo);
		*philo = tmp;
		tmp = (*philo)->next;
	}
}

void	custom_usleep(long value)
{
	struct timeval 	time;
	struct timeval 	tmp;
	long long		converted_time;
	long long		converted_tmp;	

	gettimeofday(&time, NULL);
	converted_time = time.tv_sec * 1000 + time.tv_usec / 1000;
	while (1)
	{
		gettimeofday(&tmp, NULL);
		converted_tmp = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
		if (converted_tmp - converted_time >= value)
			break;
	}
}

int	is_full(t_philosopher *philo)
{
	int i;
	int j;
	
	j = 0;
	i = -1;
	if (philo->data->limit_meals == -1)
		return (0);
	while (++i <= philo->data->philo_num)
	{
		if ((philo->meals_counter >= philo->data->limit_meals))
			++j;
		philo = philo->next;
	}
	if (j == i)
		return (1);
	return(0);
}
long	is_dead(t_philosopher *philo, long last_meal)
{
	struct timeval 	time;
	long long			converted;
	int 			i;

	i = -1;
	gettimeofday(&time, NULL);
	converted = time.tv_sec * 1000 + time.tv_usec / 1000;
//	printf("time to die %ld\n last meal %lld\n", (philo->data->time_to_die / 1000), (converted - last_meal));
	if ((converted - last_meal) >= philo->data->time_to_die / 1000)
	{
		converted = time.tv_sec * 1000 + time.tv_usec / 1000;
		while (++i < philo->data->philo_num)
		{
			pthread_mutex_unlock(philo->fork_mtx);
			pthread_mutex_lock(philo->fork_mtx);
//			philo->fork = 10;
			philo = philo->next;
			if (i == philo->data->philo_num - 1)
			{			
				print_formatted_time("is dead", philo);
//				pthread_mutex_lock(philo->fork_mtx);
			}
			pthread_mutex_unlock(philo->fork_mtx);
			
			//exit(0);//non va bene
		}
//		ft_printf(converted, "is dead", philo);
		return (converted);
	}
	return (0);
}

int main(int ac, char **av)
{
	t_data	data;
	t_philosopher	*philosophers;
	struct timeval time;
	gettimeofday(&time, NULL);
	data.start_time = time.tv_sec * 1000 + time.tv_usec / 1000;

//	int i = 0;
	if (!check_args(ac, av, &data))
		return (printf(WRONG_INPUT));	
	create_philo(&data, &philosophers);
	thread_init(&philosophers);
	//free_philo(&philosophers);
	return (0);

}
