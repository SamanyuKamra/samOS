all:
	yasm a.s -f elf64 -o output.o
	gcc -no-pie output.o
