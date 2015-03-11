default: run

a: a.c
	cc a.c -o a

run: a
	./a

b: b.c
	cc b.c -o b
