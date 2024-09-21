include includeme.mk

all: main
	@

run: all
	@./main

main: $(OBJ_FILES)
	$(GCC) $^ -o $@
	$(some_name)

%.o: %.c
	$(GCC) $(INCLUDES) -c $^ -o $@
	$(some_name)

clean:
	rm -f main $(OBJ_FILES)