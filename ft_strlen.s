section .data

section .text
		global _ft_strlen

_ft_strlen:
		mov rax, -1
loop:
		inc rax
		mov c1, byte [rdi+rax]
		cmp c1, byte 0
		jne loop
		ret
