.386
.model flat,stdcall
ExitProcess proto,dwExitCode:dword

.data
    string BYTE "This is source", 0

.code
main PROC

	mov eax, 0 ; left pointer
	mov ebx, (LENGTHOF string) - 1 ; right pointer

	loop1:
		cmp ebx, eax
		jle return0 ; at any point if right <= left then break
		mov dl, string[eax] ; store left char in reg
		xchg string[ebx], dl
		mov string[eax], dl; exchange most left with most right
		inc eax; inc left pointer
		dec ebx; dec right pointer
		loop loop1 
	return0:
		Invoke ExitProcess, 0
		
main ENDP
END main