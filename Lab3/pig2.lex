%{

/* very simplistic pig latin translation         */
/* does not take into consideration combinations */
/* of starting consonants (for one...)  DTB 4/09 */

#include<stdio.h>
%}

%%

[\t ]+		ECHO;

\n		ECHO;

[aeiouAEIOUY][a-zA-Z]*   { 
		printf ("%s%s", yytext, "yay"); }

[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXZ][aeiouyAEIOUY][a-zA-Z]* { char c0 = yytext[0];
		 		++yytext;
                 		if (c0 < 91) {c0 += 32;}
				printf ("%s%c%s", yytext, c0, "ay");}

[bcdfghjklmnpqrstvwxyzBCDFGHJJKLMNPQRSTVWXZ][^aeiouyAEIOUY][aeiouyAEIOUY][a-zA-Z]* {char c0 = yytext[0]; 
					char c1 = yytext[1];	
		 			++yytext;
		 			++yytext;
					if (c0 < 91) {c0 += 32;}
                 		printf ("%s%c%c%s", yytext, c0, c1, "ay");}

[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXZ][^aeiouyAEIOUY][^aeiouyAEIOUY][a-zA-Z]* {char c0 = yytext[0]; 
						char c1 = yytext[1];	
						char c2 = yytext[2];	
		 				++yytext;
		 				++yytext;
		 				++yytext;
						if (c0 < 91) {c0 += 32;}
                 		printf ("%s%c%c%c%s", yytext,c0,c1,c2, "ay");}

%%

main()
{
  return yylex();
}

yywrap()
{
  return 1;
}

