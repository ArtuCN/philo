/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/06/06 11:58:53 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

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
		take_forks(&philosopher);
		is_eating(&philosopher);
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

void	is_eating(t_philosopher **philo)
{
	long			time;
	struct timeval	tmp;

	gettimeofday(&tmp, NULL);
	time = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
	(*philo)->meals_counter++;
	(*philo)->last_meal = time;
	print_formatted_time("is eating", (*philo));
	usleep((*philo)->data->time_to_eat * 1000);
	pthread_mutex_unlock((*philo)->next->fork_mtx);
	pthread_mutex_unlock((*philo)->fork_mtx);
}

void	take_forks(t_philosopher **philo)
{
	pthread_mutex_lock((*philo)->fork_mtx);
	pthread_mutex_lock((*philo)->next->fork_mtx);
	print_formatted_time("has taken a fork", (*philo));
	print_formatted_time("has taken a fork", (*philo));
}
