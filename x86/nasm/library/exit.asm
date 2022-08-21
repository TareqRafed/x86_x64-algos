[bits 32]

GLOBAL exit

%include "library/global.asm"


section .text
    exit:
        mov ebx, 0  ; exit status zero
        mov eax, 1  ; sys_exit
        int 0x80