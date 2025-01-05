all : gcc-return1-object gcc-return1 gcc-stripped-return1 nasm-return1-object nasm-return1 nasm-stripped-return1

#-
gcc-return1-object : src/c/return1.c
	gcc -o bin/objects/gcc-return1.o -c -m32 src/c/return1.c

gcc-return1 : src/c/return1.c
	gcc -o bin/executables/return1 -m32 src/c/return1.c

gcc-stripped-return1 : src/c/return1.c
	gcc -o bin/executables/return1 -s -m32 src/c/return1.c
#-

#-
nasm-return1-object : src/asm/nasm-return1.s
	nasm -o bin/objects/nasm-return1.o -f elf src/asm/nasm-return1.s

nasm-return1 : 
	ld -o bin/executables/nasm-return1 -nostdlib -m elf_i386 bin/objects/nasm-return1.o

nasm-stripped-return1 : 
	ld -o bin/executables/nasm-stripped-return1 -nostdlib -s -m elf_i386 bin/objects/nasm-return1.o
#-


.PHONY : clean show

clean :
	rm -r bin/objects/*
	rm -r bin/executables/*

show :
	ls -l bin/objects
	ls -l bin/executables
