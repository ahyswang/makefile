include config.make

TARGET_EXE = a.out

INCLUDES = -I./

LIBS = -L./

SRCS = $(wildcard *.cpp)

OBJS = $(SRCS:.cpp=.o)

$(TARGET_EXE) : $(OBJS)
	$(CC) $^ -o $@ 

%.o : %.c
	$(CC) -c $< $(CFLAGS) 

%.o : %.cpp
	$(CXX) -c $< $(CCFLAGS) 

clean :
	rm $(TARGET_EXE) $(OBJS)

install :
	cp $(TARGET_EXE) $(PREFIX)
	tar zcvf $(TAG)_$(VERSION)_$(TIME).tar.gz $(PREFIX)
