# Makefile - How to compile everything
CC = gcc
CFLAGS = -Wall -g
TARGET = taskmaster
SRCS = src/main.c src/task.c src/storage.c

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: clean run