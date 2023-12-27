.586P													
.MODEL FLAT, STDCALL									
includelib kernel32.lib									

ExitProcess PROTO : DWORD								
MessageBoxA PROTO : DWORD, : DWORD, : DWORD, : DWORD	

.STACK 4096												

.CONST													

.DATA													
MB_OK	EQU	1											
STR1	DB	"SE_Asm02",	0								
STR2	DB	"Результат = ", 0			
HW		DD	?											

NUM01	DD	6
NUM02	DD	3

.CODE													

main PROC												
START	:												
	   
	   mov eax, 0h

	   add eax, NUM01
	   add eax, NUM02
	   add eax, 30h

	   mov [STR2 + 12], al

	   INVOKE MessageBoxA, HW, OFFSET STR2, OFFSET STR1, MB_OK

	push - 1												
	call ExitProcess										
main ENDP													
			
end main													