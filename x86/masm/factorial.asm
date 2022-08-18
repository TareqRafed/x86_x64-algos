TITLE Fib algorithm

COMMENT !

Returns factorial of a number
TODO: handle float numbers

!

INCLUDE Irvine32.inc

.data
prompt BYTE "Please enter a number:", 0dh, 0ah ,0


.code
getUserInput PROC
    push edx
    
    mov edx, OFFSET prompt
    call WriteString

    call ReadInt

    pop edx
    ret

getUserInput ENDP

; Returns in eax
calFactorial PROC

    push ebp        ; stack frame
    mov ebp, esp

    push ebx        ; to preserve ebx

    mov eax, [ebp + 8] ; get parameter
    cmp eax, 1      ; base case 1

    ja continue

    mov eax, 1      ; base case

    jmp lev

    ret


    continue:
        dec eax
        push eax
        call calFactorial
        
        mov ebx, [ebp + 8]
        mul ebx

    lev:
        pop ebx
        pop ebp
        ret 4
    
calFactorial ENDP

main PROC
    call getUserInput
    push eax

    call calFactorial
    call crlf
    call WriteInt

    exit
        

main ENDP
END main