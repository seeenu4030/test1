CC = gcc
CFLAGS = -Wall

all: app

app: main.o add.o
	$(CC) $(CFLAGS) -o app main.o add.o

main.o: main.c add.h
	$(CC) $(CFLAGS) -c main.c

add.o: add.c add.h
	$(CC) $(CFLAGS) -c add.c

clean:
	rm -f *.o app
