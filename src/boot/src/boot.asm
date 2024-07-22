bits 32

section .text
	align 4
	dd 0x1badb002
	dd 0x00000000
	dd -(0x1badb002 + 0x00000000)

global start
extern main

start:
	cli
	mov esp, stack_space
	call main
	hlt

halt:
	cli
	hlt
	jmp halt

section .bss
resb 8192
stack_space:
