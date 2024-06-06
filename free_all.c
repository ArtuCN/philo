/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_all.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 13:59:31 by aconti            #+#    #+#             */
/*   Updated: 2024/06/06 12:28:09 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

void	free_philo(t_philosopher **philosopher)
{
	t_philosopher	*tmp;
	t_philosopher	*philo;
	int				i;
	int				n;

	n = (*philosopher)->data->philo_num;
	i = -1;
	philo = *philosopher;
	while (++i < n && philo != NULL)
	{
		philo = philo->next;
		tmp = philo;
		tmp->prev = NULL;
		pthread_mutex_unlock(tmp->fork_mtx);
		pthread_mutex_destroy(tmp->fork_mtx);
		free(tmp->fork_mtx);
		free(tmp);
		tmp = NULL;
	}
}

void	free_data(t_data *data)
{
	pthread_mutex_unlock((data)->writing);
	pthread_mutex_unlock((data)->death);
	pthread_mutex_destroy((data)->death);
	pthread_mutex_destroy((data)->writing);
	free((data)->death);
	free((data)->writing);
}
