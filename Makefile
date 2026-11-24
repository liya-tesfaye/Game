NAME=finalproject

all: finalproject

clean:
        rm -rf finalproject finalproject.o

finalproject: finalproject.asm
        nasm -f elf -F dwarf -g finalproject.asm
        gcc -no-pie -g -m32 -znoexecstack -o finalproject finalproject.o /usr/local/share/csc314/driver.c /usr/local/share/csc314/asm_io.o