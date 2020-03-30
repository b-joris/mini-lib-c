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

SRC_FILES	=	strlen.asm		\
				strchr.asm		\
				strcmp.asm		\
				memset.asm		\
				memcpy.asm		\
				strncmp.asm		\
				strcasecmp.asm	\
				rindex.asm		\
				strstr.asm		\
				strpbrk.asm		\
				strcspn.asm		\
				memmove.asm

SRC	=	$(addprefix ./src/, $(SRC_FILES))

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

$(NAME):	$(OBJ)
	$(LD) $(LD_FLAGS) $(OBJ) -o $(NAME)

%.o : %.asm
	$(ASM) $(ASFLAGS) -o $@ $<

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