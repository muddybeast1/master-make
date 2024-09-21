C_FILES = main.c msg.c

main: $(C_FILES)
	gcc $(C_FILES) -o main

run: main
	./main

clean:
	rm main main.o