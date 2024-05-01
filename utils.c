/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/05/01 12:12:16 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void finish(t_data **data)
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
	i = -1;
	// while (++i < (*data)->philo_num)
	// {
	// 	pthread_mutex_unlock((*data)->philosophers->fork_mtx);
	// 	pthread_mutex_destroy((*data)->philosophers->fork_mtx);
	// 	(*data)->philosophers = (*data)->philosophers->next;		
	// }
}

void alone_philo(t_philosopher *philo)
{
	if (philo->data->philo_num == 1)
	{
		print_formatted_time("is thinking", philo);
		usleep(philo->data->time_to_die * 1000);
	}
}
