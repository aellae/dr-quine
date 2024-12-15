; The aim of this program is to print the source code

section .data
str:
	db "; The aim of this program is to print the source code%2$c%2$csection .data%2$cstr:%2$c%4$cdb %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c%4$cglobal main%2$c%4$cextern printf%2$c%2$cprint_self:%2$c%4$c; This function will print the code%2$c%4$cpush rbp%2$c%4$cmov rbp, rsp%2$c%4$clea rdi, [rel str]%2$c%4$clea rsi, [rel str]%2$c%4$cmov rcx, 34%2$c%4$cmov rdx, 10%2$c%4$cmov r8, 9%2$c%4$ccall printf%2$c%4$cmov rsp, rbp%2$c%4$cpop rbp%2$c%4$cret%2$c%2$cmain:%2$c%4$cpush rbp%2$c%4$cmov rbp, rsp%2$c%4$ccall print_self%2$c%4$cmov rsp, rbp%2$c%4$cpop rbp%2$c%4$cret%2$c", 0

section .text
	global main
	extern printf

print_self:
	; This function will print the code
	push rbp
	mov rbp, rsp
	lea rdi, [rel str]
	lea rsi, [rel str]
	mov rcx, 34
	mov rdx, 10
	mov r8, 9
	call printf
	mov rsp, rbp
	pop rbp
	ret

main:
	push rbp
	mov rbp, rsp
	call print_self
	mov rsp, rbp
	pop rbp
	ret
