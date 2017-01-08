#VPATH = liblinear:liblinear/blas

CXXFLAGS = $(shell pkg-config --cflags opencv)
LDLIBS = $(shell pkg-config --libs opencv)

CC = g++

objects = slic_opencv.cpp slic.cpp

segment : $(objects)
	$(CC) -o segment $(objects) $(CXXFLAGS) $(LDLIBS)

clean:
	/bin/rm -f segment *.o

clean-all: clean
	/bin/rm -f *~ 

