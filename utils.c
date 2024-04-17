/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adonato <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/04/09 15:10:58 by adonato          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"


long	is_dead(t_philosopher *philo, long last_meal)
{
	struct timeval 	time;
	long			converted;
	int 			i;

	i = 1;
	gettimeofday(&time, NULL);
	converted = time.tv_sec * 1000 + time.tv_usec / 1000;
	if (converted - last_meal > philo->data->time_to_die)
	{		
		while (i++ < philo->data->philo_num)
		{
			pthread_mutex_lock(philo->next->fork_mtx);
			philo = philo->next;
			if (i != philo->data->philo_num)
				ft_printf(converted, "is dead", philo);
			exit(0);//non va bene
		}
		return (0);
	}
	return (converted);
}
