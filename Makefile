# Makefile for compiling a C++ game with Raylib

CXX = g++
CXXFLAGS = -std=c++11 -Wall -g
LDFLAGS = -lraylib -lm -lpthread -ldl -lrt -lX11

# Define the source files and output
SRC = main.cpp
OUT = game

# Build the game
all: $(OUT)

$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(OUT) $(LDFLAGS)

# Clean the build
clean:
	rm -f $(OUT)
