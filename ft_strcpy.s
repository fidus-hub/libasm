section .data
section .text
		global _ft_strcpy
_ft_strcpy:
		push rcx
		xor rcx, rcx
loop:
	mov r15b, [rsi + rcx]
	mov [rdi + rcx], r15b
	cmp [rsi + rcx], byte 0
	je stop
	cmp [rdi + rcx], byte 0
	je stop
	inc rcx
	jmp loop

stop:
	mov rax, rdi
	pop rcx
	ret
