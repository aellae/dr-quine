#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
int main()
{
int i = 5;
if (i < 0) return 0;
char *filename = strdup("cc Sully_X.c -o Sully_X && ./Sully_X");
filename[9] = i + 48; filename[22] = i + 48; filename[35] = i + 48; filename[12] = 0;
FILE *fptr = fopen(filename + 3, "w");
filename[12] = 32;
char *code = "#include <string.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%cint main()%c{%cint i = %i;%cif (i < 0) return 0;%cchar *filename = strdup(%ccc Sully_X.c -o Sully_X && ./Sully_X%c);%cfilename[9] = i + 48; filename[22] = i + 48; filename[35] = i + 48; filename[12] = 0;%cFILE *fptr = fopen(filename + 3, %cw%c);%cfilename[12] = 32;%cchar *code = %c%s%c;%cfprintf(fptr, code, 10, 10, 10, 10, 10, 10, i - 1, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10);%cfclose(fptr);%csystem(filename);%cfree(filename);%creturn 0;%c}";
fprintf(fptr, code, 10, 10, 10, 10, 10, 10, i - 1, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10);
fclose(fptr);
system(filename);
free(filename);
return 0;
}