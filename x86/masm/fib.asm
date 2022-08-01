TITLE Fib algorithm

COMMENT !

Return fib(n); where n is the input

; TODO: handle negative values

!

INCLUDE Irvine32.inc

.data
promptBad BYTE "Invalid input, please enter again", 0dh, 0ah ,0

.data?
intNum DWORD ?

.code
main PROC

        read:  
                call ReadInt
                jno  goodInput

                mov  edx,OFFSET promptBad
                call WriteString
                jmp  read        ;go input again

        goodInput:
                mov  intNum,eax  ;store good value


        initFib:

                COMMENT !
                        two pointers; where eax is the left Pointer and ebx is the right pointer
                !
                mov eax, 0 ; manual init
                mov ebx, 1 ; manual init 

                mov ecx, 0 ; counter
                mov edx, 0 ; tmp

                ; edge case whenever input is 0
                cmp intNum, eax
                je caseZero

        startFib:
                mov edx, ebx ; temp store, to move to eax later 
                add ebx, eax ; store sum value in the right pointer
                mov eax, edx ; assign left value, to old right

                inc ecx
                        
                cmp ecx, intNum ; terminate func if reached user input
                je printResult
                jmp startFib


        printResult:
                call WriteInt
                exit
       

        caseZero:

                mov eax, 0
                call WriteInt
                exit

	exit

main ENDP
END main