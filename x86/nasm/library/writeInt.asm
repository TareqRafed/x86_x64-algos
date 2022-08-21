[bits 32]

GLOBAL writeInt

%include "library/countStr.asm"

%include "library/global.asm"


section .text
    writeInt:
        push eax
        push ebx
        push ecx
        push esi

        

        ; CONFIG
        mov eax, SYS_write
        mov ebx, STDOUT
        mov ecx, edx

        call countStr
        mov esi, eax

        push edx

        mov edx, esi          ; input length
        int 0x80

        pop edx
        pop esi
        pop ecx
        pop ebx
        pop eax
        ret