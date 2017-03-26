CC = ~/embedded_C/buildroot-build/host/usr/bin/i586-buildroot-linux-uclibc-gcc

all: bib.o bibc.o hello.o helloc.o hello cross clean

bib.o: bib.c
	gcc -c -o bib.o bib.c
bibc.o: bib.c
	$(CC) -c -o bibc.o bib.c

hello.o: hello.c bib.o
	gcc -c -o hello.o hello.c bib.o

helloc.o: hello.c bibc.o
	$(CC) -c -o helloc.o hello.c bibc.o

hello: bib.o hello.o
	gcc -o hello bib.o hello.o 
cross: bib.o hello.o
	$(CC) -o cross bibc.o helloc.o
clean:
	rm -f bib.o hello.o bibc.o helloc.o


