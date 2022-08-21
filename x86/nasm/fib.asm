
global _start

%include "x86/nasm/library/writeInt.asm"

%include "x86/nasm/library/readInt.asm"

%include "x86/nasm/library/exit.asm"


section .data
    promptBad db "Invalid input, please enter again", 0xA, 0

segment .bss
   inputChar resb 1  

section .text
_start:
    mov edx, inputChar
    call readInt

    mov edx, promptBad
    call writeInt
    

    call exit

        ; TODO: Implement ASCII to Digit
    
