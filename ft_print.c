/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/06 11:08:30 by aconti            #+#    #+#             */
/*   Updated: 2024/06/12 13:47:43 by aconti           ###   ########.fr       */
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

void	print_formatted_time(char *str, t_philosopher *philo)
{
	unsigned int	time;

	pthread_mutex_lock(philo->data->writing);
	time = get_time(philo->start_time);
	printf("%d			%d %s\n", time, philo->id, str);
	pthread_mutex_unlock(philo->data->writing);
}
