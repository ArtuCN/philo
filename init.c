/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/06 10:54:25 by aconti            #+#    #+#             */
/*   Updated: 2024/06/15 12:25:39 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "philosophers.h"

int	data_init(t_data *data, char **av)
{
	data->limit_meals = -1;
	data->end = 0;
	data->philo_num = ft_atol(av[1]);
	data->time_to_die = ft_atol(av[2]) * 1000;
	data->time_to_eat = ft_atol(av[3]);
	data->time_to_sleep = ft_atol(av[4]);
	return (1);
}

int	check_args(int ac, char **av, t_data *data)
{
	if (ac != 6 && ac != 5)
		return (0);
	if (av[1][0] == '-' || av[2][0] == '-'
		|| av[3][0] == '-' || av[4][0] == '-')
		return (0);
	data_init(data, av);
	data->writing = malloc(sizeof(t_mtx));
	data->death = malloc(sizeof(t_mtx));
	if (!data->writing || !data->death)
		return (0);
	pthread_mutex_init(data->death, NULL);
	pthread_mutex_init(data->writing, NULL);
	if (data->philo_num <= 0 || data->time_to_die <= 0
		|| data->time_to_eat <= 0 || data->time_to_sleep <= 0)
		return (0);
	if (ac == 6)
	{
		data->limit_meals = ft_atol(av[5]);
		if (data->limit_meals <= 0)
			return (free_data(data), 0);
	}
	if (data->philo_num <= 0 || data->time_to_die <= 0
		|| data->time_to_eat <= 0 || data->time_to_sleep <= 0)
		return (free_data(data), 0);
	return (1);
}

int	init(t_philosopher **new_philo, t_data *data,
	t_philosopher **prev_philo, int i)
{
	(*new_philo)->id = i + 1;
	(*new_philo)->data = data;
	(*new_philo)->meals_counter = 0;
	(*new_philo)->prev = (*prev_philo);
	return (0);
}

int	ft_malloc_init(t_philosopher **new_philo)
{
	*new_philo = (t_philosopher *)malloc(sizeof(t_philosopher));
	if (!new_philo)
		return (0);
	(*new_philo)->fork_mtx = malloc(sizeof(t_mtx));
	if (!(*new_philo)->fork_mtx)
		return (0);
	if (pthread_mutex_init(((*new_philo)->fork_mtx), NULL) != 0)
		return (0);
	(*new_philo)->eating = malloc(sizeof(t_mtx));
	if (!(*new_philo)->fork_mtx)
		return (0);
	if (pthread_mutex_init(((*new_philo)->eating), NULL) != 0)
		return (0);
	return (1);
}

void	thread_init(t_philosopher **philo)
{
	int	i;

	i = 0;
	if ((*philo)->data->philo_num == 1)
	{
		alone_philo((*philo));
		return ;
	}
	(*philo)->data->philo_init = 0;
	while (i++ < (*philo)->data->philo_num)
	{
		pthread_create(&(*philo)->thread, NULL,
			thread_function, (void *)(*philo));
		(*philo) = (*philo)->next;
	}
	pthread_create(&(*philo)->data->check, NULL, stop, (void *)(*philo)->data);
	pthread_detach((*philo)->data->check);
	i = -1;
	(*philo)->data->philo_init = 1;
	while (++i < (*philo)->data->philo_num)
	{
		(*philo) = (*philo)->next;
		pthread_join((*philo)->thread, NULL);
	}
}
