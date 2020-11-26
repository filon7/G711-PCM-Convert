CC       = gcc
RM 		 = rm -f
CFLAGS   = -Wall -g -O -fPIC
INCLUDE  = -I ./
TARGET   = libg711_pcm_convert.so

OBJS     = g711_pcm_convert.o
SRCS     = g711_pcm_convert.c

all:$(OBJS)
	$(CC) -shared -fPIC -o $(TARGET) $(OBJS) 

$(OBJS):$(SRCS)
	$(CC) $(CFLAGS) $(INCLUDE) -c $^

clean:
	$(RM) *.o *.so
