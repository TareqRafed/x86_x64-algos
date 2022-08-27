INCLUDE Irvine32.inc

.data
	userMessage BYTE "Please enter a number: ",0
	primeMsg BYTE " is prime",0
	notPrimeMsg BYTE " is not prime",0

.code

printUserInput proc
		pushad
		mov eax, ebx
		call WriteInt
		popad
		ret

printUserInput ENDP

main PROC
	; get n from user
	mov edx, OFFSET userMessage
	call WriteString
	call ReadInt

	mov esi, 2	; index

	mov ebx, eax	; store user input in ebx
	mov ecx, eax	; setup loop

	checkNextIndex:

		mov edx, 0		; setup devision

		div esi
		inc esi
		mov eax, ebx

		cmp edx, 0		; if reminder 0 then is not prime; break
		je notPrime		; unless loop finishes, it's not a prime

		loop checkNextIndex			

	prime: 
		call printUserInput
		mov edx, OFFSET primeMsg
		jmp outro

	notPrime:
		call printUserInput
		mov edx, OFFSET notPrimeMsg
		jmp outro


	outro: 
		call WriteString
		exit
		

main ENDP
END main