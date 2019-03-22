CCFLAGS = -g -Wall -O0

TARGET_STATIC = libfunc.a
TARGET_SHARE = libfunc.so

INCLUDES = -I./ -I../include/
LIBS = -L./

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

all : $(TARGET_STATIC) $(TARGET_SHARE)

$(TARGET) : $(OBJS)
	$(CC) $^ -o $@ 

$(TARGET_STATIC) : $(OBJS)
	$(AR) -cr $@ $^

$(TARGET_SHARE) : $(OBJS)
	$(CC) -shared -fPIC -o $@ $^

%.o : %.c
	$(CC) -c $< $(CCFLAGS) $(INCLUDES)

install:
	cp $(TARGET_STATIC) ../lib
	cp $(TARGET_SHARE) ../lib

clean:
	rm $(TARGET_STATIC) $(TARGET_SHARE) $(OBJS)

