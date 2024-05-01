/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_all.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 13:59:31 by aconti            #+#    #+#             */
/*   Updated: 2024/04/23 19:10:19 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void free_philo(t_philosopher **philosopher)
{
	t_philosopher	*tmp;
	t_philosopher	*philo;

	int i;
	int n;
	
	n = (*philosopher)->data->philo_num;
	i = -1;
	philo = *philosopher;
	//tmp = *philo;
	while (++i < n && philo != NULL)
	{
		tmp = philo;
		philo = philo->next;
		tmp->prev = tmp;
//		free((void *)prev->thread);
		pthread_mutex_unlock(tmp->fork_mtx);
		pthread_mutex_destroy(tmp->fork_mtx);
		free(tmp->fork_mtx);
		free(tmp);
		tmp = NULL;
	}
	//free(philosopher);
}

void free_data(t_data *data)
{
	pthread_mutex_unlock((data)->writing);
	pthread_mutex_unlock((data)->death);	
	pthread_mutex_destroy((data)->death);
	pthread_mutex_destroy((data)->writing);
	free((data)->death);	
	free((data)->writing);	
	//free((void *)data);
}