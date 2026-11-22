CC = gcc
CFLAGS = -O2 -march=native -flto -Wall -Wextra -g $(shell pkg-config --cflags gtk4 gtk4-layer-shell-0)
LIBS = $(shell pkg-config --libs gtk4 gtk4-layer-shell-0)

pickle: pickle.c
	$(CC) $(CFLAGS) pickle.c -o pickle $(LIBS)
clean:
	rm -f pickle
