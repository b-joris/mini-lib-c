##
## EPITECH PROJECT, 2020
## ASM_minilibc_bootstrap_2019
## File description:
## Makefile
##

ASM	=	nasm

ASFLAGS	=	-f elf64

LD	=	ld

LD_FLAGS	=	-shared

SRC	=	src/strlen.asm		\
		src/strchr.asm		\
		src/strcmp.asm		\
		src/memset.asm		\
		src/memcpy.asm		\
		src/strncmp.asm		\
		src/strcasecmp.asm	\
		src/rindex.asm		\
		src/strstr.asm

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

$(NAME):	$(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(NAME)

%.o: %.asm
	$(ASM) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(OBJ)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all

test:	re
	gcc -c -fpic -fPIC main.c
	gcc -lasm -L./ main.o -o asm
	clear
	LD_LIBRARY_PATH=./ LD_PRELOAD=./libasm.so ./asm

.PHONY:	all clean fclean re $(NAME)