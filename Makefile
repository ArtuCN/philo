# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aconti <aconti@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/09 15:10:21 by adonato           #+#    #+#              #
#    Updated: 2024/06/19 11:13:37 by aconti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo
SRCS = philosophers.c utils.c routine.c free_all.c init.c ft_print.c

OBJS = ${SRCS:.c=.o}

PHILO_H = philosophers.h

RED = '\033[0;31m'
GREEN = '\033[0;32m'
PURPLE = '\033[0;35m'
CYAN = '\033[0;36m'
YELLOW = '\033[0;33m'
WHITE = '\033[0;37m'
ORANGE = '\033[0;91m'
PSYCHO = '\033[5;91m'
FUCHSIA = '\033[0;95m'
DARK_GREEN = '\033[0;32m'
LIGHT_BLUE = '\033[0;94m'

NONE = '\033[0m'

COMPILE = gcc -Wall -Wextra -Werror -g -pthread

all: ${NAME}

${NAME}: ${OBJS} $(PHILO_H)
		$(COMPILE) $(OBJS) $(LIBFT) -o $(NAME)

		@ echo $(PURPLE)"        /\ \       / /\    / /\  /\ \       _\ \          /\ \     "$(NONE) 
		@ echo $(GREEN)"       /  \ \     / / /   / / /  \ \ \     /\__ \        /  \ \    "$(NONE)
		@ echo $(RED)"      / /\ \ \   / /_/   / / /   /\ \_\   / /_ \_\      / /\ \ \   "$(NONE) 
		@ echo $(CYAN)"     / / /\ \_\ / /\ \__/ / /   / /\/_/  / / /\/_/     / / /\ \ \  "$(NONE) 
		@ echo $(WHITE)"    / / /_/ / // /\ \___\/ /   / / /    / / /         / / /  \ \_\ "$(NONE) 
		@ echo $(ORANGE)"   / / /__\/ // / /\/___/ /   / / /    / / /         / / /   / / / "$(NONE) 
		@ echo $(LIGHT_BLUE)"  / / /_____// / /   / / /   / / /    / / / ____    / / /   / / /  "$(NONE) 
		@ echo $(FUCHSIA)" / / /      / / /   / / /___/ / /__  / /_/_/ ___/\ / / /___/ / /   "$(NONE)   
		@ echo $(DARK_GREEN)"/ / /      / / /   / / //\__\/_/___\/_______/\__\// / /____\/ /  "$(NONE) 
		@ echo $(YELLOW)"\/_/       \/_/    \/_/ \/_________/\_______\/    \/_________/  "$(NONE)  
                                                                   
%.o: %.c
	$(COMPILE) -c $< -o $@

clean:
		rm -rf $(OBJS)
		@ echo $(CYAN)"- - - - - - -" $(NONE)
		@ echo $(RED)"Cleaning Done!" $(NONE)
		@ echo $(CYAN)"- - - - - - -" $(NONE)

fclean:
		rm -rf $(NAME) $(OBJS)
		@ echo $(DARK_GREEN)"- - - - - - - -" $(NONE)
		@ echo $(PURPLE)"Fcleaning Done!"$(NONE)
		@ echo $(DARK_GREEN)"- - - - - - - -" $(NONE)

re: fclean all

.PHONY: all clean fclean
