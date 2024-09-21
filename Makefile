include includeme.mk

all: main
	@

run: all
	@./main

main: $(OBJ_FILES)
	gcc $^ -o $@

%.o: %.c
	gcc $(INCLUDES) -c $^ -o $@

clean:
	rm -f main $(OBJ_FILES)