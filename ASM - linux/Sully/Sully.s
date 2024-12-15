; The aim of this program is to create a Sully_X.c file and compile it
section .data
  code: db "; The aim of this program is to create a Sully_X.c file and compile it%1$csection .data%1$c  code: db %2$c%3$s%2$c,0%1$c  filename: db %2$cSully_X.s%2$c, 0%1$c  cmdsystem:	db %2$cnasm -f elf64 Sully_X.s; gcc Sully_X.o -o Sully_X; rm Sully_X.o; ./Sully_X%2$c, 0%1$c  x: db %4$d%1$c%1$csection .text%1$c  global main%1$c  extern open, close, dprintf, chmod, system%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	mov rax, [rel x]%1$c	add rax, 48%1$c	cmp rax, 54%1$c	jge quit%1$c	mov r9, rax%1$c%1$cupdate_file_name:%1$c	lea rdi, [rel filename]%1$c	add rdi, 6%1$c	stosb%1$c	lea rdi, [rel cmdsystem]%1$c	add rdi, 20%1$c	stosb%1$c	add rdi, 14%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c	add rdi, 11%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c%1$ccreate_file:%1$c	lea rdi, [rel filename]%1$c	mov rsi, 577%1$c	call open%1$c%1$c	mov r8, rax%1$c	lea rdi, [rel filename]%1$c	mov rsi, 511%1$c	call chmod%1$c%1$cwrite_file:%1$c	mov rdi, r8%1$c	lea rsi, [rel code]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel code]%1$c	sub r9, 49%1$c	call dprintf%1$c%1$c	call close%1$c%1$cexecute_system:%1$c	lea rdi, [rel cmdsystem]%1$c	call system%1$c%1$cquit:%1$c  pop rbp%1$c  mov rax, 0%1$c  ret%1$c",0
  filename: db "Sully_X.s", 0
  cmdsystem:	db "nasm -f elf64 Sully_X.s; gcc Sully_X.o -o Sully_X; rm Sully_X.o; ./Sully_X", 0
  x: db 5

section .text
  global main
  extern open, close, dprintf, chmod, system

main:
	push rbp
	mov rbp, rsp

	mov rax, [rel x]
	add rax, 48
	cmp rax, 54
	jge quit
	mov r9, rax

update_file_name:
	lea rdi, [rel filename]
	add rdi, 6
	stosb
	lea rdi, [rel cmdsystem]
	add rdi, 20
	stosb
	add rdi, 14
	stosb
	add rdi, 12
	stosb
	add rdi, 11
	stosb
	add rdi, 12
	stosb

create_file:
	lea rdi, [rel filename]
	mov rsi, 577
	call open

	mov r8, rax
	lea rdi, [rel filename]
	mov rsi, 511
	call chmod

write_file:
	mov rdi, r8
	lea rsi, [rel code]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel code]
	sub r9, 49
	call dprintf

	call close

execute_system:
	lea rdi, [rel cmdsystem]
	call system

quit:
  pop rbp
  mov rax, 0
  ret
