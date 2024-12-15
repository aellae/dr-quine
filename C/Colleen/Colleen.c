#include <stdio.h>
/*
*  The aim of this program is to print the source code
*/
void print_self()
{
	char *str = "#include <stdio.h>%c/*%c*  The aim of this program is to print the source code%c*/%cvoid print_self()%c{%c%cchar *str = %c%s%c;%c%cprintf(str, 10, 10, 10, 10, 10, 10, 9, 34, str, 34, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 10);%c}%c%cint main()%c{%c%c/*%c%c*  This function will print the code%c%c*/%c%cprint_self();%c}";
	printf(str, 10, 10, 10, 10, 10, 10, 9, 34, str, 34, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 10);
}

int main()
{
	/*
	*  This function will print the code
	*/
	print_self();
}