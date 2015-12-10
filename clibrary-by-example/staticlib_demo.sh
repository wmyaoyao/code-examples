#!/bin/sh
# Static library demo

# Create static library's object file, libhello-static.o.
# I'm using the name libhello-static to clearly
# differentiate the static library from the
# dynamic library examples, but you don't need to use
# "-static" in the names of your
# object files or static libraries.
echo "# Building object code file"
gcc -Wall -g -c -o libhello-static.o libhello.c

echo "# Creating static library"
ar rcs libhello-static.a libhello-static.o

# At this point we could just copy libhello-static.a
# somewhere else to use it.
# For demo purposes, we'll just keep the library
# in the current directory.

echo "# Compiling demo_use object code file."
gcc -Wall -g -c demo_use.c -o demo_use.o

# Create demo_use program; -L. causes "." to be searched during
# creation of the program.  Note that this command causes
# the relevant object file in libhello-static.a to be
# incorporated into file demo_use_static.
echo "# Creating demo_use bin file"
gcc -g -o demo_use_static demo_use.o -L. -lhello-static

# Execute the program.
echo "# Run:"
./demo_use_static


