CCFLAGS = -g -Wall -O0
TARGET = test
TARGET_SHARE = $(TARGET)_share
TARGET_STATIC = $(TARGET)_static
INCLUDES = -I./include/
LIBS = -L./lib/ -lfunc

SRCS = $(wildcard *.c)

OBJS = $(SRCS:.c=.o)

all: $(TARGET_STATIC) $(TARGET_SHARE)

$(TARGET_STATIC): $(OBJS)
	$(CC) $^ -o $@ $(INCLUDES) $(LIBS) -static

$(TARGET_SHARE): $(OBJS)
	$(CC) $^ -o $@ $(INCLUDES) $(LIBS)

%.o : %.c
	$(CC) -c $< $(CCFLAGS) $(INCLUDES)

install : 
	cp $(TARGET_STATIC) ./bin
	cp $(TARGET_SHARE) ./bin

clean:
	rm $(TARGET_STATIC) $(TARGET_SHARE) $(OBJS)

info:
	$(info $(SRCS))
	$(info $(OBJS))
