BITS 32

extern printf
extern scanf 

section .data
	input: db "%d",0
	output: db "%d",10,0

section .text 
	global main

	main:
	push ebp 
	mov ebp, esp
	sub esp, 0x18

	lea eax, [ebp-0x4]
	push eax
	push input
	call scanf

	mov dword [ebp-0x8],0		;a
	mov dword [ebp-0xc],0		;i	
	mov dword [ebp-0x10],1		;b

	loop: 
	mov ebx,0			;c
	mov edx,0			;compare
	mov ebx,dword [ebp-0x8]
	add ebx,dword [ebp-0x10]	;c=a+b

	inc dword[ebp-0xc]

	push dword[ebp-0x8] 
	push output
	call printf
	
	mov edx,dword[ebp-0x10]		;swap
	mov dword[ebp-0x8],edx
	
	mov dword[ebp-0x10],ebx 

	mov edx,dword[ebp-0x4]

	cmp dword[ebp-0xc],edx
	jl loop
	leave 
	ret
		
	
