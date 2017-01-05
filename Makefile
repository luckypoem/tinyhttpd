all: httpd client

FLAGS = -W -Wall
# on linux this should be pthread
LIBS = -pthread #-lsocket
CC = gcc

httpd: httpd.c
	$(CC) $(FLAGS) $(LIBS) -o $@ $<

client: simpleclient.c
	$(CC) $(FLAGS) -o $@ $<

clean:
	rm httpd client

.PHONY: clean
