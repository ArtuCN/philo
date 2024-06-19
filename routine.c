/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   routine.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 13:35:29 by aconti            #+#    #+#             */
/*   Updated: 2024/06/19 17:24:59 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void	*thread_function(void *arg)
{
    t_philosopher	*philosopher;

    philosopher = (t_philosopher *)arg;
    pthread_create(&philosopher->check, NULL, stop, (void *)philosopher);
    if (philosopher->id % 2 == 1)
    {
        print_formatted_time("is thinking", philosopher);
        usleep(philosopher->data->time_to_eat * 1000);
    }
    pthread_mutex_lock(philosopher->data->death);
    while (philosopher->data->end == 0)
    {
        pthread_mutex_unlock(philosopher->data->death);
        take_forks(&philosopher);
        is_eating(&philosopher);
        print_formatted_time("is sleeping", philosopher);
        usleep(philosopher->data->time_to_sleep * 1000);
        print_formatted_time("is thinking", philosopher);
	    pthread_mutex_lock(philosopher->data->death);
    }
	pthread_mutex_unlock(philosopher->data->death);
    return (NULL);
}

void	is_eating(t_philosopher **philo)
{
	long			time;
	struct timeval	tmp;

	if ((*philo)->data->end == 1)
		return ;
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
