/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philosophers.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aconti <aconti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/09 15:10:41 by adonato           #+#    #+#             */
/*   Updated: 2024/06/06 12:11:00 by aconti           ###   ########.fr       */
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

typedef pthread_mutex_t			t_mtx;
typedef struct s_philosopher	t_philosopher;

typedef struct s_data
{
	long			philo_num;
	long			time_to_die;
	long			time_to_eat;
	long			time_to_sleep;
	long			limit_meals;
	long			start_time;
	int				end;
	pthread_t		check;
	t_mtx			*death;
	int				philo_init;
	t_mtx			*writing;
	t_philosopher	*philosophers;
}	t_data;

typedef struct s_philosopher
{
	int						id;
	t_mtx					*eating;
	long					start_time;
	int						meals_counter;
	long					last_meal;
	t_mtx					*fork_mtx;
	struct s_data			*data;
	pthread_t				thread;
	struct s_philosopher	*prev;
	struct s_philosopher	*next;
}	t_philosopher;

void			is_eating(t_philosopher **philo);
void			free_philo(t_philosopher **philo);
int				check_args(int ac, char **av, t_data *data);
long			ft_atol(char *nptr);
void			create_philo(t_data *data, t_philosopher **philo);
void			thread_init(t_philosopher **philo);
void			*thread_function(void *arg);
int				is_full(t_philosopher *philo);
void			*stop(void *arg);
void			alone_philo(t_philosopher *philo);
void			print_formatted_time(char *str, t_philosopher *philo);
void			finish(t_data **data);
void			free_data(t_data *data);
void			take_forks(t_philosopher **philo);
int				init(t_philosopher **new_philo, t_data *data,
					t_philosopher **prev_philo, int i);
int				ft_malloc_init(t_philosopher **new_philo);
unsigned int	get_time(unsigned int start);
int				check_stop_death(t_data *data);

#endif
