#!/bin/sh
set -x
g++ -o cplus.o -c cplus.cpp
g++ -o c.o -c c.c
ar r libc_test.so c.o cplus.o


go run test.go
