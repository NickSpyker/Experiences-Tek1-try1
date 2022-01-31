##
## Makefile
##

CC			= 	gcc

CFLAGS		= 	-g3 -W -Wall -Werror -Wextra -c -Iinclude/

SRC 		=	main.c \

OBJ 		= 	$(SRC:.c=.o)

TARGET		= 	execute

all: $(TARGET)

$(TARGET): $(OBJ)
	@make -C lib
	@$(CC) -o $(TARGET) $(OBJ) -Llib -lmy -lm
	@echo "Build OK"

clean :
	@make clean -C lib
	@rm -rf $(OBJ)
	@echo "Clean OK"

fclean : clean
	@make fclean -C lib
	@rm -rf $(TARGET)
	@echo "Fclean OK"

re : fclean all
