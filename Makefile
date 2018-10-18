CXX=g++
CC=gcc

all:
	$(CXX) all-tests.cpp unittest.cpp watchdog.cpp hexdump.c -I ./include/ -std=c++11 -shared -fPIC -o libunittest.so
	$(CC) test.c -I ./include/ -L ./ -lunittest -lpthread -o test
test: libunittest.so
	$(CC) test.c -I ./include/ -L ./ -lunittest -lpthread -o test

clean:
	rm -f libunittest.so
	rm -f test

