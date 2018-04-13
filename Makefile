#_*_Makefile_*_

SRC=src/source.cc
BIN=bin/newcc
CC=g++

newcc:source.o;$(CC) $< -o $(BIN)
source.o:$(SRC);$(CC) -c $<
clean:;rm -rf *.o $(BIN)

build:newcc run
run:;@bin/newcc