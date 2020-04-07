# Makefile for Long Assignment 1
# Andres Hernandez, Dartmouth College, Fall 2018

#.SUFFIXES: .c

PROG = test
OBJS = LA1.o la1helpers.o
REBUILDABLES = $(OBJS) $(PROG)
CFLAGS = -Wall -pedantic -std=c11 -ggdb
CC = gcc
MAKE = MAKE

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

la1helpers.o: la1helpers.h
LA1.o: la1helpers.h

.PHONY: clean all

clean:
	rm -f $(REBUILDABLES)
	echo Clean done

all: $(PROG)
	echo All done
