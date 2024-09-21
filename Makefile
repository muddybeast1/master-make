SRC = $(shell find -iname "*.c")
# OBJ_FILES = $(SRC:%.c=%.o)
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
INCLUDES = -I./include/magic -I./include/magic2
INCLUDES = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

#$(info $(SRC) $(OBJ_FILES) $(INCLUDES))

all: main
	@

run: all
	@./main

main: $(OBJ_FILES)
	gcc $^ -o $@

%.o: %.c
	gcc $(INCLUDES) -c $^ -o $@

clean:
	@rm -f main $(OBJ_FILES)