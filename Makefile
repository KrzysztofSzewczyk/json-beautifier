
CC=gcc
CFLAGS=-O3 -march=native -std=c89

.PHONY: clean all default

default: all

all: beautify

clean:
	rm beautify beautify.o

beautify: beautify.o
	$(CC) -o $@ $^ $(CFLAGS)

beautify.o: beautify.c
	$(CC) -c -o $@ $^ $(CFLAGS)
