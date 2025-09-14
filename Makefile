#
# Makefile to build Cg examples for Linux
#
# Author: Alex V. Boreskoff, <steps3d@narod.ru>
#


CC=gcc
AL_INC_PATH = /usr/include
#AL_LIBS     = -ldl -lopenal -lmad -lpthread -logg -lvorbis -lvorbisfile
CFLAGS      = -g -I$(AL_INC_PATH) -Wall -O3

all: hello printf

hello: hello.o
	$(CC) $(LDFLAGS) hello.o -o hello $(LIBS) $(AL_LIBS) -lc

printf: printf.o
	$(CC) $(LDFLAGS) printf.o -o printf $(LIBS) $(AL_LIBS) -lc

#example-3: example-3.o kbhit.o Vector3D.o OpenAlContext.o Sound.o SoundData.o Data.o
#	$(CC) $(LDFLAGS) example-3.o kbhit.o OpenAlContext.o Sound.o SoundData.o Data.o -o example-3 $(LIBS) $(AL_LIBS) -lc

#example-4: example-4.o Vector3D.o
#	$(CC) $(LDFLAGS) example-4.o -o example-4 $(LIBS) $(AL_LIBS) -lc

clean:
	rm -r -f hello hello.o printf printf.o 2> /dev/null


%.o: %.c
	cc $(CFLAGS) $(INCLUDE) -c $<

#%.o: %.cpp
#	cc $(CFLAGS) $(INCLUDE) -I$(AL_INC_PATH) -I$(AL_INC_PATH)/AL -c $<
#
