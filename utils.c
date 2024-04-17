/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/04/17 13:08:57 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"


void alone_philo(t_philosopher *philo)
{
	if (philo->next->id == philo->id)
	{
		print_formatted_time("is thinking", philo);
		usleep(philo->data->time_to_die);
	}
}

void waiting(t_philosopher *philo)
{
	pthread_mutex_lock(philo->data->writing);
	while (1)
	{
		if (philo->data->philo_init == 1)
			break ;
		custom_usleep(1);
	}
	pthread_mutex_unlock(philo->data->writing);
}

// int	is_hungry(t_philosopher *philo)
// {
// 	int i;
// 	int j;
// 	long long k;
	
// 	j = 0;
// 	i = 0;
// 	k = philo->last_meal;
// 	while (++i <= philo->data->philo_num)
// 	{
// 		if (k <= philo->next->last_meal)
// 			++j;
// 		philo = philo->next;
// 	}
// 	if (j >= i / 2)
// 		return (1);
// 	return(0);
// }