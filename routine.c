/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/05/01 12:11:31 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void is_eating(t_philosopher **philo)
{
	long	time;
	struct timeval	tmp;
	gettimeofday(&tmp, NULL);
	time = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
	// pthread_mutex_lock((*philo)->eating);
	(*philo)->meals_counter++;
	(*philo)->last_meal = time;
	// pthread_mutex_unlock((*philo)->eating);
	print_formatted_time("is eating", (*philo));
	usleep( (*philo)->data->time_to_eat * 1000);
}
