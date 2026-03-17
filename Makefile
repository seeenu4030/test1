CC = gcc
CFLAGS = -Wall

all: app

app: main.o add.o sub.o
	$(CC) $(CFLAGS) -o app main.o add.o sub.o

main.o: main.c add.h sub.h
	$(CC) $(CFLAGS) -c main.c

add.o: add.c add.h
	$(CC) $(CFLAGS) -c add.c

sub.o: sub.c sub.h
	$(CC) $(CFLAGS) -c sub.c

clean:
	rm -f *.o app
