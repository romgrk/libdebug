#
# Makefile
# romgrk, 2020-11-02 21:58
#

CC=gcc
OS=$(shell uname | tr A-Z a-z)
ifeq ($(findstring mingw,$(OS)), mingw)
    OS='windows'
endif
ARCH=`uname -m`

all:
	$(CC) -c -Wall -static -fpic -o ./main.o ./main.c $(shell pkg-config --cflags --libs glib-2.0)
	$(CC) -shared -o ./libdebug.so ./main.o


# vim:ft=make
#
