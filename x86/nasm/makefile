File?=fib

all: buildThenClean

$(File).o:	$(File).asm
		nasm -f elf64 $(File).asm

test:	$(File).o
		ld -s -o test $(File).o
		-./test || true

buildThenClean: test
				rm -i $(File).o test