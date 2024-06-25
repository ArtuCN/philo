/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/06/25 12:13:49 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void	*thread_function(void *arg)
{
	t_philosopher	*philosopher;
	t_data			*data;

	philosopher = (t_philosopher *)arg;
	data = philosopher->data;
	if (philosopher->id % 2 == 0 && philosopher->data->end == 0)
	{
		print_formatted_time("is thinking", philosopher);
		usleep(philosopher->data->time_to_eat * 1000);
	}
	while (philosopher->data->end == 0)
	{
		take_forks(&philosopher);
		is_eating(&philosopher);
		pthread_mutex_lock(data->death);
		if (data->end == 0)
			print_formatted_time("is sleeping", philosopher);
		pthread_mutex_unlock(data->death);
		usleep(data->time_to_sleep * 1000);
		pthread_mutex_lock(data->death);
		if (data->end == 0)
			print_formatted_time("is thinking", philosopher);
		pthread_mutex_unlock(data->death);
	}
	return (NULL);
}

void	is_eating(t_philosopher **philo)
{
	long			time;
	struct timeval	tmp;

	gettimeofday(&tmp, NULL);
	time = tmp.tv_sec * 1000 + tmp.tv_usec / 1000;
	pthread_mutex_lock((*philo)->eating);
	(*philo)->meals_counter++;
	(*philo)->last_meal = time;
	pthread_mutex_unlock((*philo)->eating);
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
