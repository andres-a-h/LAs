# Makefile for Long Assignment 1
# Andres Hernandez, Dartmouth College, Fall 2018

.SUFFIXES: .c

LINK_TARGET = test
OBJS = LA1.o la1helpers.o
REBUILDABLES = $(OBJS) $(LINK_TARGET)

$(LINK_TARGET): $(OBJS)
	gcc -g -o $(@) $^

$.o: $.c
	gcc -g -o $@ -c $<

Main.o : LongAssignment.h
LongAssignment.o : LongAssignment.h

.PHONY: clean all

clean:
	rm -f $(REBUILDABLES)
	echo Clean done

all: $(LINK_TARGET)
	echo All done
