/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philosophers.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:31 by adonato           #+#    #+#             */
/*   Updated: 2024/06/25 12:13:17 by aconti           ###   ########.fr       */
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

void	*stop(void *arg);
void	thread_init(t_philosopher **philo);
void	create_philo(t_data *data, t_philosopher **philo);

void	*stop(void *arg)
{
	t_data			*data;

	data = (t_data *)arg;
	while (1)
	{
		usleep(data->time_to_die);
		if (check_stop_death(data))
			return (NULL);
		pthread_mutex_lock(data->death);
		if (is_full(data->philosophers))
		{
			finish(&data);
			return (0);
		}
		else
			pthread_mutex_unlock(data->death);
	}
}

int	is_full(t_philosopher *philo)
{
	int	i;
	int	j;

	j = 0;
	i = -1;
	if (philo->data->limit_meals == -1)
		return (0);
	pthread_mutex_unlock(philo->data->death);
	pthread_mutex_lock(philo->data->death);
	while (++i <= philo->data->philo_num)
	{
		pthread_mutex_lock(philo->eating);
		if ((philo->meals_counter >= philo->data->limit_meals))
			++j;
		pthread_mutex_unlock(philo->eating);
		philo = philo->next;
	}
	pthread_mutex_unlock(philo->data->death);
	if (j == i)
		return (1);
	return (0);
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
		ft_malloc_init(&new_philo);
		init(&new_philo, data, &prev_philo, i);
		new_philo->last_meal = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
		new_philo->start_time = get_time(0);
		if (prev_philo == NULL)
			philo[0] = new_philo;
		else
			philo_list(new_philo, prev_philo);
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
	if (*nptr == '-')
		return (-1);
	if (*nptr == '+')
		nptr++;
	while (*nptr != '\0' && *nptr <= '9' && *nptr >= '0')
	{
		n *= 10;
		n += (*nptr++ - 48);
	}
	if ((*nptr < '0' || *nptr > '9') && *nptr != '\0')
		return (-1);
	if (n > INT_MAX)
		n = -1;
	return ((int)n);
}

int	main(int ac, char **av)
{
	t_data				data;
	t_philosopher		*philosophers;
	struct timeval		time;

	gettimeofday(&time, NULL);
	if (!check_args(ac, av, &data))
		return (printf(WRONG_INPUT));
	create_philo(&data, &philosophers);
	thread_init(&philosophers);
	free_philo(&philosophers);
	free_data(&data);
	return (0);
}
