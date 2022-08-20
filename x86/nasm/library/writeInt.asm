[bits 32]

GLOBAL writeInt

%include "/home/tariq/projects/asm/x86/nasm/library/global.asm"


section .text
    writeInt:
        push eax
        push ebx
        push ecx

        ; CONFIG
        mov eax, SYS_write
        mov ebx, STDOUT
        mov ecx, edx

        push edx

        mov edx, 0x0A          ; input length
        int 0x80

        pop edx

        pop ecx
        pop ebx
        pop eax
        ret