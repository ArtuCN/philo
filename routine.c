/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/04/18 14:42:20 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void is_eating(t_philosopher **philo)
{
	long	time;
	struct timeval	tmp;
	gettimeofday(&tmp, NULL);			
	time = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
	(*philo)->meals_counter++;
	(*philo)->last_meal = time;
	print_formatted_time("is eating", (*philo));
	custom_usleep( (*philo)->data->time_to_eat);
}