/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/06/06 12:10:44 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

int	check_stop_death(t_data *data)
{
	struct timeval	t;
	long long		temp;

	gettimeofday(&t, NULL);
	temp = t.tv_sec * 1000 + t.tv_usec / 1000;
	pthread_mutex_lock(data->death);
	if (temp - data->philosophers->last_meal >= data->time_to_die / 1000)
	{
		print_formatted_time("is dead", data->philosophers);
		finish(&data);
		return (1);
	}
	else
		pthread_mutex_unlock(data->death);
	return (0);
}

void	finish(t_data **data)
{
	int	i;

	i = -1;
	pthread_mutex_lock((*data)->writing);
	(*data)->end = 1;
	pthread_mutex_unlock((*data)->writing);
	while (++i < (*data)->philo_num)
	{
		pthread_mutex_unlock((*data)->philosophers->fork_mtx);
		pthread_mutex_lock((*data)->philosophers->fork_mtx);
		pthread_mutex_unlock((*data)->philosophers->fork_mtx);
		(*data)->philosophers = (*data)->philosophers->next;
	}
	pthread_mutex_unlock((*data)->death);
}

void	alone_philo(t_philosopher *philo)
{
	if (philo->data->philo_num == 1)
	{
		print_formatted_time("is thinking", philo);
		usleep(philo->data->time_to_die * 1000);
	}
}
