/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/06/25 18:59:54 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void	philo_list(t_philosopher *new_philo, t_philosopher *prev_philo)
{
	prev_philo->next = new_philo;
	new_philo->prev = prev_philo;
}

int	check_stop_death(t_data *data)
{
	struct timeval	t;
	long long		temp;
	int				i;

	gettimeofday(&t, NULL);
	temp = t.tv_sec * 1000 + t.tv_usec / 1000;
	pthread_mutex_lock(data->death);
	i = -1;
	while (++i < data->philo_num)
	{
		pthread_mutex_lock(data->philosophers->eating);
		if (temp - data->philosophers->last_meal >= data->time_to_die / 1000)
		{
			pthread_mutex_unlock(data->philosophers->eating);
			pthread_mutex_unlock(data->death);
			print_formatted_time("is dead", data->philosophers);
			finish(&data);
			return (1);
		}
		pthread_mutex_unlock(data->philosophers->eating);
		data->philosophers = data->philosophers->next;
	}
	pthread_mutex_unlock(data->death);
	return (0);
}

void	finish(t_data **data)
{
	pthread_mutex_lock((*data)->death);
	(*data)->end = 1;
	pthread_mutex_unlock((*data)->death);
}

int	alone_philo(t_philosopher *philo)
{
	print_formatted_time("is thinking", philo);
	usleep(philo->data->time_to_die);
	print_formatted_time("is dead", philo);
	return (0);
}
