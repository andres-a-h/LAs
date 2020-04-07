# Makefile for Long Assignment 1
# Andres Hernandez, Dartmouth College, Fall 2018

.SUFFIXES: .c

SRCS = LA1.c la1helpers.c
OBJS = $(SRCS:.c=.o)
REBUILDABLES = $(OBJS) $(PROG)
OUTPUT = test

test : $(OBJS)
	cc -o $(OUTPUT) $(OBJS)

la1helpers.o: la1helpers.h
LA1.o: la1helpers.h

.PHONY: clean all

clean:
	rm -f $(REBUILDABLES)
	echo Clean done

all: $(PROG)
	echo All done
