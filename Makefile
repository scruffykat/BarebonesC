# Compiler Options
CC=gcc
CFLAGS=-Wall -g
EXEC=myapp

# Directories
OUTPUT=bin

# Internal File Scanning
SRC=$(shell find . -name '*.c')
OBJ=$(SRC:.c=.o)

all: $(OUTPUT) $(EXEC)

$(OUTPUT):
	mkdir -p $(OUTPUT)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $(OUTPUT)/$@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

run: $(EXEC)
	@./$(OUTPUT)/$(EXEC)

clean:
	rm -f $(OBJ) $(OUTPUT)/$(EXEC)

.PHONY: all clean run