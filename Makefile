# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgomes-c <jgomes-c@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/18 10:25:25 by jgomes-c          #+#    #+#              #
#    Updated: 2021/06/01 17:45:53 by jgomes-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# File Name Variables
NAME	=		libft.a
SRC		=		ft_bzero.c \
				ft_calloc.c \
				ft_memcpy.c \
				ft_memccpy.c \
				ft_memmove.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memset.c \
				ft_strlen.c \
				ft_strlcpy.c \
				ft_strlcat.c \
				ft_strchr.c \
				ft_strrchr.c \
				ft_strncmp.c \
				ft_atoi.c \
				ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_substr.c \
				ft_strdup.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_strnstr.c \
				ft_split.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_itoa.c \
				ft_strmapi.c \
	
OBJ		=		$(SRC:.c=.o)

BONUS	=		ft_lstnew.c \
				ft_lstsize.c \

BONUS_OBJ =		$(BONUS:.c=.o)	

# Compiling Variables
CC		=	gcc
FLAG	=	-Wall -Wextra -Werror
AR		=	ar -rcs
RM		=	rm -f

all: $(NAME)

$(NAME): $(OBJ) 
	$(AR) $(NAME) $(OBJ) 
	@printf "Compilation complete.\n"

bonus: $(NAME)

$(NAME): $(BONUS_OBJ) 
	$(AR) $(NAME) $(BONUS_OBJ) 
clean:
	$(RM) $(OBJ) $(BONUS_OBJ)


fclean: clean
	$(RM) $(NAME)

re: fclean all
