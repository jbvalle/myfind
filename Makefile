CC = gcc

SRC_DIR = src
OBJ_DIR = obj
INC_DIR = inc

CFLAGS = -g -Wall -Wextra -I./$(INC_DIR)

SRC := $(wildcard $(SRC_DIR)/*.c)
OBJ := $(patsubst $(SRC_DIR)/%.c, $(SRC_DIR)/$(OBJ_DIR)/%.o, $(SRC))

TARGET = main

all: $(OBJ) $(TARGET)

$(SRC_DIR)/$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c | mkobj
	$(CC) $(CFLAGS) -c -o $@ $^

$(TARGET) : $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	
show:
	echo $(OBJ)

mkobj:
	mkdir -p $(SRC_DIR)/$(OBJ_DIR)
