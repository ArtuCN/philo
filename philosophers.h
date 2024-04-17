/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philosophers.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:41 by adonato           #+#    #+#             */
/*   Updated: 2024/04/15 12:51:46 by aconti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PHILOSOPHERS_H
# define PHILOSOPHERS_H

# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <sys/time.h>
# include <unistd.h>
# include <pthread.h>
# include <stdint.h>
# include <limits.h>
# include <stdbool.h>

# define WRONG_INPUT "\033[1;31mWRONG INPUT\033[0m\n"
# define SINCRONIZED 1
# define NOT_SINCRONIZED 0


typedef pthread_mutex_t mtx_t;
typedef struct s_philosopher t_philosopher;

typedef struct s_data
{
	long			philo_num;
	long			time_to_die;
	long			time_to_eat;
	long			time_to_sleep;
	long			limit_meals;
	long			start_time;
	bool			end;
	pthread_t		check;
	bool			philo_init;
	mtx_t			*writing;
	t_philosopher 	*philosophers;
}	t_data;

typedef struct s_philosopher
{
	int					id;
	int					meals_counter;
	bool					full;
	int					fork;
	int					sleeping;
	int					thinking;
	long					last_meal;
	mtx_t					*fork_mtx;
	struct	s_data				*data;
	pthread_t				thread;
	struct	s_philosopher			*prev;
	struct	s_philosopher			*next;
}	t_philosopher;

void free_philo(t_philosopher **philo);
int	check_args(int ac, char **av, t_data *data);
long	ft_atol(char *nptr);
void	create_philo(t_data *data, t_philosopher **philo);
void	thread_init(t_philosopher **philo);
void	*thread_function(void *arg);
long	is_dead(t_philosopher *philo, long last_meal);
void	ft_printf(long long time, char *str, t_philosopher *philo);
long	is_dead(t_philosopher *philo, long last_meal);
void	ft_printf2(long long time, char *str, t_philosopher *philo);
int	is_full(t_philosopher *philo);
void *stop(void *arg);
void	custom_usleep(long value);
int	is_hungry(t_philosopher *philo);


#endif
