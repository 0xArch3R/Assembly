BITS 32

extern printf
extern scanf

section .data
	input: db "%d", 0
	out1: db "Prime",10,0
	out2: db "Not Prime",10,0
	out3: db "Neither composite nor prime",10,0
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
	
	mov ebx,0	;flag
	mov ecx,2	;i 
	

	mov edx,dword[ebp-0x4]
	cmp edx,1
	je one
	
	cmp edx,2
	je primeo

	loop:
		mov edx, 0
		mov eax, dword[ebp-0x4]
		div ecx 
		inc ecx
		cmp edx,0
		je nprimeo
		cmp ecx, dword[ebp-0x4]
		jl loop
		
	
	cmp ebx,0
	je primeo 	

                 
		
		
	primeo:
		push out1
		call printf
		leave 
		ret

	nprimeo:
		push out2
		call printf
		leave
		ret
	
	one:
		push out3 
		call printf
		leave
		ret
	
