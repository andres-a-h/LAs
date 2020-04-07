# Makefile for Long Assignment 1
# Andres Hernandez, Dartmouth College, Fall 2018

.SUFFIXES: .c

SRCS = ~/Downloads/Dartmouth/Coding Questions in C/LAsLA1.c ~/Downloads/Dartmouth/Coding Questions in C/LAsla1helpers.c
OBJS = $(SRCS:.c=.o)
OUTPUT = test

test : $(OBJS)
	gcc -g -o $@ $^

$.o : $.c
	gcc -g -o $@ -c $<

.PHONY: clean all

clean:
	rm -f $(OBJS) $(OUTPUT)
	echo Clean done

all: test
	echo All done
