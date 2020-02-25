ASM	=	nasm

CC	=	gcc

RM	=	rm -f

ASFLAGS	=	-f elf64

NAME	=	libasm.so

T_NAME	=	lib_test

SRCS	=	./src/memset.asm \
			./src/strcmp.asm \
			./src/strlen.asm \
			./src/strncmp.asm \
			./src/memcpy.asm \
			./src/strchr.asm \
			./src/strcasecmp.asm

OBJS	=	$(SRCS:.asm=.o)

all:		$(NAME)

$(NAME):	$(OBJS)
		$(CC) -nostdlib -shared -fPIC $(OBJS) -o $(NAME)

test: fclean all
		$(RM) $(OBJS)
		gcc main.c libasm.so; clear; export LD_PRELOAD=./libasm.so ;./a.out; unset LD_PRELOAD; rm a.out
%.o : %.asm
		$(ASM) $(ASFLAGS) -o $@ $<

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME) $(T_NAME)

re:		fclean all

.PHONY:		all clean fclean re