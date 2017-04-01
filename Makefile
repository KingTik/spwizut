CC = ~/embedded_C/buildroot-build/host/usr/bin/i586-buildroot-linux-uclibc-gcc

all: bib.o bib.so hello.o hello clean

bib.o: bib.c
	gcc -c -fpic -Werror -Wall -o bib.o bib.c

bib.so: bib.o
	gcc -shared -o bib.so bib.o


hello.o: hello.c bib.o
	gcc -c -o hello.o hello.c bib.o

hello: bib.o hello.o
	gcc -o hello bib.o hello.o 

clean:
	rm -f bib.o hello.o 


