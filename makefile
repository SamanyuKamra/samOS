output:
	gcc -m64 -no-pie a.o -o a
a.o:
	yasm -f elf64 a.s -o a.o
