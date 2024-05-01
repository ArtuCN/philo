# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aconti <aconti@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/09 15:10:21 by adonato           #+#    #+#              #
#    Updated: 2024/04/23 13:59:41 by aconti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo
SRCS = philosophers.c utils.c routine.c free_all.c

OBJS = ${SRCS:.c=.o}

PHILO_H = philosophers.h

RED = '\033[0;31m'
GREEN = '\033[0;32m'

COMPILE = gcc -Wall -Wextra -Werror -g -pthread

all: ${NAME}

${NAME}: ${OBJS} $(PHILO_H)
		$(COMPILE) $(OBJS) $(LIBFT) -o $(NAME)
		@ echo $(GREEN) "Philosophers Compiled!" $(NONE)

%.o: %.c
	$(COMPILE) -c $< -o $@

clean:
		rm -rf $(OBJS)
		@ echo $(RED) "Cleaning Done." $(NONE)

fclean:
		rm -rf $(NAME)
		@ echo $(RED) "Fcleaning Done." $(NONE)

re: fclean all

.PHONY: all clean fclean
