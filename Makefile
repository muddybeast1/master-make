a.out: main.c
	gcc main.c

c:
	rm a.out

run: a.out
	./a.out