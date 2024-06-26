/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/06 11:08:30 by aconti            #+#    #+#             */
/*   Updated: 2024/06/25 19:53:25 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

unsigned int	get_time(unsigned int start)
{
	struct timeval	times;

	gettimeofday(&times, NULL);
	return ((unsigned int)((times.tv_sec * 1000
			+ times.tv_usec / 1000) - start));
}

int	can_write(t_data *data)
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

void	print_formatted_time(char *str, t_philosopher *philo)
{
	unsigned int	time;

	if (can_write(philo->data) == 0)
		return ;
	pthread_mutex_lock(philo->data->writing);
	time = get_time(philo->start_time);
	printf("%d			%d %s\n", time, philo->id, str);
	pthread_mutex_unlock(philo->data->writing);
}
