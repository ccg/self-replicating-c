a: a.c
	cc a.c -o a

b: b.c
	cc b.c -o b

clean:
	rm -f a b c c.c
