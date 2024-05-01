/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philosophers.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:31 by adonato           #+#    #+#             */
/*   Updated: 2024/05/01 12:06:45 by aconti           ###   ########.fr       */
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
	
	pthread_mutex_lock(philo->data->writing);
	time = get_time(philo->start_time);
	printf("%d			%d %s\n", time, philo->id, str);
	pthread_mutex_unlock(philo->data->writing);
}


void	*thread_function(void *arg)
{
	t_philosopher	*philosopher;

	philosopher = (t_philosopher *)arg;
	philosopher->start_time = get_time(0);
	alone_philo(philosopher);
	if (philosopher->id % 2 == 0 && philosopher->data->end == 0)
	{
		print_formatted_time("is thinking", philosopher);
		usleep(philosopher->data->time_to_eat * 1000);
	}
	while (philosopher->data->end == 0)
	{
		pthread_mutex_lock(philosopher->fork_mtx);
		pthread_mutex_lock(philosopher->next->fork_mtx);
		print_formatted_time("has taken a fork", philosopher);
		print_formatted_time("has taken a fork", philosopher);
		is_eating(&philosopher);
		pthread_mutex_unlock(philosopher->next->fork_mtx);
		pthread_mutex_unlock(philosopher->fork_mtx);
		pthread_mutex_lock(philosopher->data->death);	
		if (philosopher->data->end == 0)
			print_formatted_time("is sleeping", philosopher);
		pthread_mutex_unlock(philosopher->data->death);
		usleep(philosopher->data->time_to_sleep * 1000);
		pthread_mutex_lock(philosopher->data->death);	
		if (philosopher->data->end == 0)
			print_formatted_time("is thinking", philosopher);
		pthread_mutex_unlock(philosopher->data->death);	
	}
	return (NULL);
}

void *stop(void *arg)
{
	t_data	*data;
	data = (t_data *)arg;
	struct timeval t;
	long long temp;
	
	while (1)
	{
		usleep(data->time_to_die);
		gettimeofday(&t, NULL);
		temp = t.tv_sec * 1000 + t.tv_usec / 1000;
		pthread_mutex_lock(data->death);
		if (temp - data->philosophers->last_meal >= data->time_to_die / 1000)
		{
			print_formatted_time("is dead", data->philosophers);
			pthread_mutex_unlock(data->death);
			finish(&data);
			return(0);
		}
		else
			pthread_mutex_unlock(data->death);
		pthread_mutex_lock(data->death);
		if (is_full(data->philosophers))
		{
			pthread_mutex_unlock(data->death);
			finish(&data);
			return(0);
		}
		else
			pthread_mutex_unlock(data->death);
	}
	
}

void	thread_init(t_philosopher **philo)
{
	int	i;
	
	i = 0;
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
	i = -1;
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
		new_philo->eating = malloc(sizeof(mtx_t));
		if (!new_philo->fork_mtx)
			return ;
		if (pthread_mutex_init((new_philo->eating), NULL) != 0)
			return ;
		new_philo->id = i + 1;
		new_philo->data = data;	
		new_philo->meals_counter = 0;
		new_philo->prev = prev_philo;
		new_philo->last_meal = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
		if (prev_philo == NULL)
			philo[0] = new_philo;
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
	data->end = 0;
	data->philo_num = ft_atol(av[1]);
	data->time_to_die = ft_atol(av[2]) * 1000;
	data->time_to_eat = ft_atol(av[3]);
	data->time_to_sleep = ft_atol(av[4]);
	data->writing = malloc(sizeof(mtx_t));
	data->death = malloc(sizeof(mtx_t));
	if (!data->writing || !data->death)
		return (0);
	pthread_mutex_init(data->death, NULL);
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


int main(int ac, char **av)
{
	t_data	data;
	t_philosopher	*philosophers;
	struct timeval time;
	gettimeofday(&time, NULL);

//	int i = 0;
	if (!check_args(ac, av, &data))
		return (printf(WRONG_INPUT));	
	create_philo(&data, &philosophers);
	thread_init(&philosophers);
	free_philo(&philosophers);
	free_data(&data);
	return (0);
}
