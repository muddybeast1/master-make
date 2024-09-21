OBJ_FILES = main.o msg.o

main: $(OBJ_FILES)
	gcc $^ -o main

%.o: %.c
	gcc -c $^

run: main
	./main

clean:
	rm main $(OBJ_FILES)