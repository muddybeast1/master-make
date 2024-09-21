SRC = $(shell find -iname "*.c")
# OBJ_FILES = $(SRC:%.c=%.o)
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))

$(info $(SRC) $(OBJ_FILES))

all: main
	./$<

main: $(OBJ_FILES)
	gcc $^ -o $@

%.o: %.c
	gcc -c $^ -o $@

clean:
	rm -f main $(OBJ_FILES)