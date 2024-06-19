/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/06/19 17:24:17 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void	philo_list(t_philosopher *new_philo, t_philosopher *prev_philo)
{
	prev_philo->next = new_philo;
	new_philo->prev = prev_philo;
}

int	check_stop_death(t_philosopher *philo)
{
	struct timeval	t;
	long long		temp;

	gettimeofday(&t, NULL);
	temp = t.tv_sec * 1000 + t.tv_usec / 1000;
	pthread_mutex_lock(philo->eating);
	if (temp - philo->last_meal >= philo->data->time_to_die / 1000)
	{
		print_formatted_time("is dead", philo);
		finish(&philo->data);
		return (1);
	}
	else
		pthread_mutex_unlock(philo->eating);
	return (0);
}

void	finish(t_data **data)
{
	// int	i;
	// i = -1;
	pthread_mutex_lock((*data)->death);
	(*data)->end = 1;
	pthread_mutex_unlock((*data)->death);
	// while (++i < (*data)->philo_num)
	// {
	// 	pthread_mutex_unlock((*data)->philosophers->fork_mtx);
	// 	pthread_mutex_lock((*data)->philosophers->fork_mtx);
	// 	pthread_mutex_unlock((*data)->philosophers->fork_mtx);
	// 	(*data)->philosophers = (*data)->philosophers->next;
	// }
}

int	alone_philo(t_philosopher *philo)
{
	print_formatted_time("is thinking", philo);
	usleep(philo->data->time_to_die);
	print_formatted_time("is dead", philo);
	return (0);
}
