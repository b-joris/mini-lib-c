##
## EPITECH PROJECT, 2020
## ASM_minilibc_2019
## File description:
## Makefile
##

CC	=	gcc

ASM_FOLDER	=	../src

SRC	=	./test_strlen.c		\
		./test_strchr.c		\
		./test_memset.c

OBJ	=	$(ASM_FOLDER)/strlen.o	\
		$(ASM_FOLDER)/strchr.o	\
		$(ASM_FOLDER)/memset.o

TESTS_FLAGS	=	-I../include -lcriterion --coverage -Wall -Wextra -Werror

NAME	=	unit_tests

all:	$(NAME)

$(NAME):
	$(CC) -o $(NAME) $(SRC) $(OBJ) $(TESTS_FLAGS)
	./$(NAME)

clean:
	rm -rf *.gcda
	rm -rf *.gcno

fclean:	clean
	rm -rf $(NAME)

re:	fclean all

.PHONY:	all clean fclean re $(NAME)