#VPATH = liblinear:liblinear/blas

CXXFLAGS = $(shell pkg-config --cflags opencv)
LDLIBS = $(shell pkg-config --libs opencv)

VLROOT = /home/wangs/vlfeat-0.9.20

CC = g++

objects = slic_vlfeat.cpp

segment : $(objects)
	$(CC) -o segment $(objects) $(CXXFLAGS) $(LDLIBS) -I$(VLROOT) -L$(VLROOT)/bin/glnxa64/ -lvl

clean:
	/bin/rm -f segment *.o

clean-all: clean
	/bin/rm -f *~ 

