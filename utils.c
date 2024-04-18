/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:57 by adonato           #+#    #+#             */
/*   Updated: 2024/04/18 14:40:43 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"


void alone_philo(t_philosopher *philo)
{
	if (philo->data->philo_num == 1)
	{
		print_formatted_time("is thinking", philo);
		usleep(philo->data->time_to_die);
	}
}