SRC = $(shell find -iname "*.c")
# OBJ_FILES = $(SRC:%.c=%.o)
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))

$(info $(SRC) $(OBJ_FILES))

main: $(OBJ_FILES)
	gcc $^ -o $@

%.o: %.c
	gcc -c $^

run: main
	./$<

clean:
	rm -f main $(OBJ_FILES)