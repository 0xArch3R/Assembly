BITS 32

extern printf
extern scanf
	
section .data
	input: db"%d",0
	output : db"output is %d",10,0

section .text
	global main
	main:
	push ebp 
	mov ebp, esp 
	sub esp, 0x10

	lea eax, [ebp-0x4]
	push eax 
	push input
	call scanf

	mov edx, dword[ebp-0x4]
	push edx 
	push output 
	call printf
	
	mov eax,1
        mov ebx,1
	
        loop:
		mul ebx
		inc ebx
		mov edx,dword [ebp-0x4]
		cmp ebx,edx
		jle loop
	
	push eax 
	push output
	call printf
	leave
	ret
