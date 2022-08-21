
global _start

%include "library/writeInt.asm"

%include "library/readInt.asm"

%include "library/exit.asm"


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
    
