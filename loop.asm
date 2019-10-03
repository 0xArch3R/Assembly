BITS 32

extern printf
extern scanf

section .data
	
	output : db "%d",10,0

section .text
	global main

	main:
	push ebp 
	mov ebp, esp
	
	mov ebx,0

	

	loop:
	
	
	add ebx,1
	push ebx
	push output
	call printf
	cmp ebx,10
	
	jl loop	
	

	leave
