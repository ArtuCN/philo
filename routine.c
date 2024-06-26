/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/06/25 20:04:20 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

int	end_while(t_data *data)
{
	pthread_mutex_lock(data->death);
	if (data->end == 1)
	{
		pthread_mutex_unlock(data->death);
		return (0);
	}
	pthread_mutex_unlock(data->death);
	return (1);
}

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
	while (end_while(data))
	{
		take_forks(&philosopher);
		is_eating(&philosopher);
		print_formatted_time("is sleeping", philosopher);
		usleep(data->time_to_sleep * 1000);
		print_formatted_time("is thinking", philosopher);
		if (philosopher->data->limit_meals != -1
			&& philosopher->meals_counter >= philosopher->data->limit_meals)
			break ;
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
