; The aim of this program is to create a file named Grace_kid.s and write the source code into it
%define SRC "; The aim of this program is to create a file named Grace_kid.s and write the source code into it%1$c%4$cdefine SRC %2$c%3$s%2$c%1$c%4$cdefine FILENAME %2$cGrace_kid.s%2$c%1$c%1$c%4$cmacro GRACE 0%1$c	section .data%1$c		src:	db SRC,0%1$c		file:	db FILENAME,0%1$c%1$c	section .text%1$c		global _main%1$c		extern _open, _close, _dprintf, _chmod%1$c%1$c	_main:%1$c		push rbp%1$c		mov rbp, rsp%1$c%1$c		lea rdi, [rel file]%1$c		mov rsi, 577 ; O_CREAT | O_WRONLY | O_TRUNC%1$c		call _open%1$c		mov r8, rax%1$c%1$c		mov rdi, r8%1$c		lea rsi, [rel src]%1$c		mov rdx, 10%1$c		mov rcx, 34%1$c		lea r8, [rel src]%1$c		mov r9, 37%1$c		call _dprintf%1$c%1$c		call _close%1$c%1$c		pop rbp%1$c		mov rax, 0%1$c		ret%1$c%4$cendmacro%1$c%1$cGRACE%1$c"
%define FILENAME "Grace_kid.s"

%macro GRACE 0
	section .data
		src:	db SRC,0
		file:	db FILENAME,0

	section .text
		global _main
		extern _open, _close, _dprintf, _chmod

	_main:
		push rbp
		mov rbp, rsp

		lea rdi, [rel file]
		mov rsi, 577 ; O_CREAT | O_WRONLY | O_TRUNC
		call _open
		mov r8, rax

		mov rdi, r8
		lea rsi, [rel src]
		mov rdx, 10
		mov rcx, 34
		lea r8, [rel src]
		mov r9, 37
		call _dprintf

		call _close

		pop rbp
		mov rax, 0
		ret
%endmacro

GRACE
