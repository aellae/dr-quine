#include <stdio.h>
#include <fcntl.h>
/*
* the aim of this program is to write it's own source code into a file named Grace_kid.c
*/
#define GRACE(x)int main(){ x }
#define STR "#include <stdio.h>%c#include <fcntl.h>%c/*%c* the aim of this program is to write it's own source code into a file named Grace_kid.c%c*/%c#define GRACE(x)int main(){ x }%c#define STR %c%s%c%c#define DUP FILE *fptr = fopen(%cGrace_kid.c%c, %cw%c);char *str = STR;fprintf(fptr, str, 10, 10, 10, 10, 10,10,  34, STR, 34, 10,34, 34, 34, 34, 10);%cGRACE( DUP )"
#define DUP FILE *fptr = fopen("Grace_kid.c", "w");char *str = STR;fprintf(fptr, str, 10, 10, 10, 10, 10,10,  34, STR, 34, 10,34, 34, 34, 34, 10);
GRACE( DUP )