# Compiler and linker variables
CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -Iinclude $(OPTS)
LDFLAGS = -lm

# Source and object files
SRC_DIR = src
TEST_DIR = test
APP_SRC = $(SRC_DIR)/app.c $(SRC_DIR)/vouched.c $(SRC_DIR)/marine.c $(SRC_DIR)/soar.c
TEST_SRC = $(TEST_DIR)/test.c $(SRC_DIR)/vouched.c $(SRC_DIR)/marine.c $(SRC_DIR)/soar.c
APP_OBJ = $(APP_SRC:.c=.o)
TEST_OBJ = $(TEST_SRC:.c=.o)

# Default target: Build the app
app: $(APP_OBJ)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

# Target: Compile and run tests
test: $(TEST_OBJ)
	$(CC) $(CFLAGS) $^ -o test_app $(LDFLAGS)  # Rename the executable
	./test_app

# Target: Clean up object files
clean:
	rm -f src/*.o test/*.o app test_app

# Pattern rule for compiling .c files to .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Phony targets
.PHONY: app test clean
