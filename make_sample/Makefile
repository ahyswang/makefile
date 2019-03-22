CCFLAGS = -g -Wall -O0

TARGET = a.out

INCLUDES = -I./

LIBS = -L./

SRCS = $(wildcard *.cpp)

OBJS = $(SRCS:.cpp=.o)

$(TARGET) : $(OBJS)
	$(CC) $^ -o $@ 

%.o : %.c
	$(CC) -c $< $(CCFLAGS)

clean:
	rm $(TARGET) $(OBJS)

info:
	$(info $(SRCS))
	$(info $(OBJS))
