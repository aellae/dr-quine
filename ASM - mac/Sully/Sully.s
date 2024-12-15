; The aim of this program is to create a Sully_X.c file and compile it
section .data
  code: db "; The aim of this program is to create a Sully_X.c file and compile it%1$csection .data%1$c  code: db %2$c%3$s%2$c,0%1$c  filename: db %2$cSully_X.s%2$c, 0%1$c  system:	db %2$cnasm -f macho64 Sully_X.s; gcc Sully_X.o -o Sully_X; ./Sully_X%2$c, 0%1$c  x: db %4$d%1$c%1$csection .text%1$c  global _main%1$c  extern _open, _close, _dprintf, _chmod, _system%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	mov rax, [rel x]%1$c	sub rax, 1%1$c	cmp rax, -1%1$c	jle quit%1$c  add rax, 48%1$c	mov r9, rax%1$c%1$cupdate_file_name:%1$c	lea rdi, [rel filename]%1$c	add rdi, 6%1$c	stosb%1$c	lea rdi, [rel system]%1$c	add rdi, 22%1$c	stosb%1$c	add rdi, 14%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c	add rdi, 10%1$c	stosb%1$c%1$ccreate_file:%1$c	lea rdi, [rel filename]%1$c	mov rsi, 577%1$c	call _open%1$c%1$c	mov r8, rax%1$c%1$cwrite_file:%1$c	mov rdi, r8%1$c	lea rsi, [rel code]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel code]%1$c  sub r9, 48%1$c	call _dprintf%1$c%1$c	call _close%1$c%1$cexecute_system:%1$c	lea rdi, [rel system]%1$c	call _system%1$c%1$cquit:%1$c  pop rbp%1$c  mov rax, 0%1$c  ret%1$c",0
  filename: db "Sully_X.s", 0
  system:	db "nasm -f macho64 Sully_X.s; gcc Sully_X.o -o Sully_X; ./Sully_X", 0
  x: db 5

section .text
  global _main
  extern _open, _close, _dprintf, _chmod, _system

_main:
	push rbp
	mov rbp, rsp

	mov rax, [rel x]
	sub rax, 1
	cmp rax, -1
	jle quit
  add rax, 48
	mov r9, rax

update_file_name:
	lea rdi, [rel filename]
	add rdi, 6
	stosb
	lea rdi, [rel system]
	add rdi, 22
	stosb
	add rdi, 14
	stosb
	add rdi, 12
	stosb
	add rdi, 10
	stosb

create_file:
	lea rdi, [rel filename]
	mov rsi, 577
	call _open

	mov r8, rax

write_file:
	mov rdi, r8
	lea rsi, [rel code]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel code]
  sub r9, 48
	call _dprintf

	call _close

execute_system:
	lea rdi, [rel system]
	call _system

quit:
  pop rbp
  mov rax, 0
  ret
