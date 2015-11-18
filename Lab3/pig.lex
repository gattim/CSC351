%{

/* very simplistic pig latin translation         */
/* does not take into consideration combinations */
/* of starting consonants (for one...)  DTB 4/09 */

#include<stdio.h>
%}

%%

[\t ]+		ECHO;

\n		ECHO;

[aeiou][a-z]*   { 
		printf ("%s%s", yytext, "yay"); }

[bcdfghjklmnpqrstvwxyz][aeiouy][a-z]* { char c0 = yytext[0];
		 		++yytext;
                 		printf ("%s%c%s", yytext, c0, "ay");}

[bcdfghjklmnpqrstvwxyz][^aeiouy][aeiouy][a-z]* {char c0 = yytext[0]; 
					char c1 = yytext[1];	
		 			++yytext;
		 			++yytext;
                 		printf ("%s%c%c%s", yytext, c0, c1, "ay");}

[bcdfghjklmnpqrstvwxyz][^aeiouy][^aeiouy][a-z]* {char c0 = yytext[0]; 
						char c1 = yytext[1];	
						char c2 = yytext[2];	
		 				++yytext;
		 				++yytext;
		 				++yytext;
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

