SRC = $(wildcard ./src/*.cpp)
OBJ = $(SRC:.cpp=.o)
CC = g++
TARGET = quadratic.out

all: out
	./$(TARGET)

install: $(OBJ)
	$(CC) -o3 $(TARGET) $(OBJ) -lm 
	make clean

check: out
	valgrind --quite ./$(TARGET)

out: $(OBJ)
	$(CC) -o $(TARGET) $(OBJ) -lm 

clean: 
	rm -f $(OBJ) $(TARGET)
