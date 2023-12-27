.586P
.MODEL FLAT, STDCALL
includelib kernel32.lib

ExitProcess PROTO : DWORD
MessageBoxA PROTO : DWORD, : DWORD, : DWORD, : DWORD

.STACK 4096

.CONST

.DATA
MB_OK EQU 1
STR1 DB "Asm_lab03", 0
STR2 DB "Сумма элементов массива ", 0
HW DB ?
Arr DWORD 3, 0, 1, 4
Zero DWORD 0

myBytes BYTE 10h, 20h, 30h, 40h
myWords WORD 8Ah, 3Bh, 44h, 5Fh, 99h
myDoubles DWORD 1, 2, 3, 4, 5, 6
myPointer DWORD myDoubles

.CODE

main PROC
START	:
	mov eax, 0
	mov ebx, 0

	mov esi, OFFSET myBytes
	mov AX, [ESI + 4]
	mov BX, [ESI + 2]

	mov eax, 0
	mov ebx, 0

	mov esi, OFFSET myWords
	mov AX, [ESI + 4]
	mov BX, [ESI + 2]

	mov eax, 0
	mov ebx, 0

	mov esi, OFFSET myDoubles
	mov AX, [ESI + 4]
	mov BX, [ESI + 2]

	mov eax, 0
	mov ebx, 0

	mov esi, OFFSET myPointer
	mov AX, [ESI + 4]
	mov BX, [ESI + 2]




	mov ecx, LENGTHOF Arr
	mov esi, OFFSET Arr
	mov eax, 0

	L1:
		add eax, [esi]
		add esi, 4
	loop L1	
	
	add eax, 30h
	mov [Str2 + 24], al
	INVOKE MessageBoxA, HW, OFFSET STR2, OFFSET STR1, MB_OK

	mov ecx, LENGTHOF Arr
	mov esi, OFFSET Arr
	L2:
		mov edx, [esi]

		cmp edx, 0
		jz zf0

		add esi, type Arr
	loop L2

	mov ebx, 1
	jmp Exit


	zf0:
		mov ebx, 0

	Exit:
		push -1
		call ExitProcess
main ENDP
 
end main



