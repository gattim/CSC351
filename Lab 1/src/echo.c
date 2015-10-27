/*
*  Echo Program
*  by Stuart C. Shapiro
*
*  To demonstrate the writing and running of a C program.
*
*  Store this program in a file named echo.c
*
*  To run this program:
*    1. Type  cc -o echo echo.c
*         or gcc -Wall -o echo echo.c
*    2. Type ./echo
*
*    Repeats the following:
*      print a numbered prompt;
*      read something;
*      echo 'I read --><whatever was read><--'
*    until the thing read is the symbol bye.
*/

#include <stdio.h>

int strcmp(const char* s1, const char* s2);

int main()
{

  int n;
  char str[80];

  printf("\nC Echo\nType something to each prompt. \nType bye to quit.\n\n");

  for (n = 1; ; n++) {
    printf("%2d: ", n);
    scanf("%s", str);
    if (strcmp(str, "bye")==0) {
      printf("Good bye.\n");
      return 0;
    }
    else 
      {printf("I read -->%s<--\n",str);}

  }
}

