# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: evasco-o <evasco-o@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/14 13:25:28 by evasco-o          #+#    #+#              #
#    Updated: 2023/10/11 11:44:50 by evasco-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
	   ft_strlen.c ft_memset.c ft_bzero.c ft_toupper.c ft_tolower.c ft_strchr.c\
	   ft_strrchr.c ft_strncmp.c ft_strlcpy.c ft_strlcat.c ft_strnstr.c\
	   ft_atoi.c ft_memcpy.c ft_memcmp.c ft_memmove.c ft_strdup.c ft_memchr.c\
	   ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c\
	   ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c\
	   ft_putendl_fd.c ft_putnbr_fd.c
OBJS := $(SRCS:.c=.o)
CC = gcc
CCFLAGS = -Wall -Wextra -Werror
RM = rm -f
NAME = libft.a
INCLUDE = libft.h



all: $(NAME)

$(NAME): $(OBJS) $(INCLUDE)
	ar rcs $(NAME) $(OBJS)

%.o:
	@$(CC) $(CCFLAGS) -c $(SRCS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
