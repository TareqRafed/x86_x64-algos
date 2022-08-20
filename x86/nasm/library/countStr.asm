[bits 32]

GLOBAL countStr

; gets string address (first char) in edx
; returns string count in eax
section .text
    countStr:
        push edx
        mov eax, 0
    loop:
        inc eax
        inc edx
        cmp byte [edx], 0x0      ; is null terminated
        je loop
    
        pop edx
        ret
        