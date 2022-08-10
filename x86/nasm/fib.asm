
global _start

STDIN           equ 0
SYS_read        equ 0x3

section .data
    promptBad db "Invalid input, please enter again", 0xD, 0xA, 0

segment .bss
   inputChar resb 1  

section .text
_start:
    .read:
        mov eax, SYS_read      ; syscall read
        mov ebx, STDIN         ; stdin
        mov ecx, inputChar
        mov edx, 0x2           ; input length
        int 0x80

        ; TODO: Implement ASCII to Digit
    
