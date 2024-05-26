# Compiler Options
CC=gcc
CFLAGS=
EXEC=myapp

# Directories
OUTPUT=bin

# Apply debug flags if DEBUG=on else apply the O2 optimisation flags
DEBUG=off
ifeq ($(DEBUG), on)
	CFLAGS +=-Wall -g
else
	CFLAGS += -O2 -ffunction-sections
endif

# Internal File Scanning
SRC=$(shell find . -name '*.c')
OBJ=$(SRC:.c=.o)

all: $(OUTPUT) $(EXEC)

# Ensure the output folder(s) exist
$(OUTPUT):
	mkdir -p $(OUTPUT)

# Create the final executable
$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $(OUTPUT)/$@ $^

# Create the object files to be linked (all .c files)
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Run the output from executable build process
run: $(EXEC)
	@./$(OUTPUT)/$(EXEC)

# Get rid of all those objects and binary files
clean:
	rm -f $(OBJ) $(OUTPUT)/$(EXEC)

# Shorthands. May have to be removed if your makefile becomes too complex.
r: run
c: clean

.PHONY: all clean run