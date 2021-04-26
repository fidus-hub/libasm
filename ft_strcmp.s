section .data

section .text
	global _ft_strcmp
_ft_strcmp:
loop:
		mov r15b, byte [rsi]
		cmp [rdi], r15b
		jne stop
		cmp [rsi], byte 0
		je stop
		inc rdi
		inc rsi
		jmp loop
stop:
	xor rax,rax
	movzx rax, byte [rdi]
	movzx rdx, byte [rsi]
	sub rax, rdx
	ret