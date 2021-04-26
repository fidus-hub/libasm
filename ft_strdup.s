section .data

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
_ft_strdup:
		call _ft_strlen
		mov rcx, rax
		inc rcx
		push rdi
		mov rdi, rcx
		call _malloc
		pop rsi
		mov rdi, rax
		call _ft_strcpy
		ret