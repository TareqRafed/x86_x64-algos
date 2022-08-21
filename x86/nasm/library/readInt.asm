[bits 32]

GLOBAL readInt

%include "library/global.asm"
%include "library/asciiToInt.asm"


section .text
    readInt:
        push eax
        push ebx
        push ecx

        mov eax, SYS_read      ; syscall read
        mov ebx, STDIN         ; stdin
        mov ecx, edx           ; memory address

        push edx

        mov edx, 0x0A          ; input length
        int 0x80

        pop edx
        mov byte [edx + 0x0A], 0       ; add null terminator

        call asciiToInt

        pop ecx
        pop ebx
        pop eax
        ret