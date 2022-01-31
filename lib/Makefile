##
## lib/Makefile
##

CC			= 	gcc

CFLAGS		= 	-g3 -W -Wall -Werror -Wextra -I../include/

SRC			= 	$(wildcard *.c)

OBJ 		= 	$(SRC:.c=.o)

TARGET		= 	libmy.a

all: $(TARGET)

$(TARGET):
	@$(CC) $(CFLAGS) -c $(SRC)
	@ar src $(TARGET) $(OBJ)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(TARGET)

re : fclean all
