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
		src/strstr.asm		\
		src/strpbrk.asm		\
		src/strcspn.asm		\
		src/memmove.asm

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

$(NAME):	$(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(NAME)

%.o: %.asm
	$(ASM) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(OBJ)
	make clean -C ./tests_asm

fclean:	clean
	rm -rf $(NAME)
	make fclean -C ./tests_asm

tests_run:	all
	make -C ./tests_asm

re:	fclean all

.PHONY:	all clean fclean re tests_run $(NAME)