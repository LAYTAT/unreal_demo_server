CC=gcc

CFLAGS = -g -c -Wall 
#-pedantic

all: talker listener
talker: 
	    $(CC) -o talker talker.o

listener: listener.o
	    $(CC) -o listener listener.o

%.o:    %.c
	$(CC) $(CFLAGS) $*.c

clean:
	rm talker
	rm listener
	rm *.o