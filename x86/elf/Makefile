OBJDIR = bin/objects
EXEDIR = bin/executables
VPATH = src/c:src/asm

all : binfolders return1 nasm-nostdlib nasm-manualheaders

binfolders :
	mkdir -p $(OBJDIR)
	mkdir -p $(EXEDIR)

return1 : return1.c
	gcc -o $(EXEDIR)/return1 -m32 $<

nasm-nostdlib : nasm-nostdlib.o
	ld -o $(EXEDIR)/$@ -nostdlib -m elf_i386 $(OBJDIR)/$<

nasm-nostdlib.o : nasm-return1.s
	nasm -o $(OBJDIR)/$@ -f elf $<

nasm-manualheaders : nasm-manualheaders-return1.s
	nasm -o $(EXEDIR)/$@ -f bin $< 
	chmod +x $(EXEDIR)/$@

.PHONY : clean show

clean :
	rm -r $(OBJDIR)/*
	rm -r $(EXEDIR)/*

show :
	ls -l $(OBJDIR)
	ls -l $(EXEDIR)
