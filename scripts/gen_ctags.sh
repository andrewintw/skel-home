#!/bin/sh

find $* -type f -name "*.[ch]" -o -name "*.db" -o -name "*.cc" -o -name "*.[sS]" -o -name "*.ino" -o -name "*.pde" -o -name Makefile | sed -e 's/^/"/' -e 's/$/"/' | xargs /usr/bin/ctags -a --langmap=c++:.ino

