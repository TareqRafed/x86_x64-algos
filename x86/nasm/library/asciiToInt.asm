[bits 32]

GLOBAL asciiToInt


; Gets memory address in EDX, return integer in the value of the dereferenced address
section .text
    asciiToInt:
        push eax
        push edx
    LOOP:
        mov eax, [edx]  ; get data

        cmp eax, 0      ; check for null terminator
        je e
        sub eax, '0'    ; convert to integer
        mov [edx], eax  ; store in memory
        add edx, 1      ; move to next address
        jmp LOOP

    e:
        pop edx
        pop eax
        ret