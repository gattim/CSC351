%{
/* this sample demonstrates very simple word recognition: verbs & other */
#include "y.tab.h"
#include<stdio.h>
%}
%%

[\t ]+		/* ignore whitespace */ ;

up |
so |
out |
just  { printf ("\"%s\" is an adverb.\n", yytext);
  return(ADVERB);}

is		|
am		|
are		|
were		|
was		|
be		|
being		|
been		|
do		|
does		|
did		|
will		|
would		|
should		|
can		|
could		|
has		|
have		|
like		|
had		|
go		{ printf ("\"%s\" is a verb.\n", yytext); 
                  return(VERB);}

sad		|
happy		|
anxious		|
green		|
fuzzy		|
funny		{ printf ("\"%s\" is an adjective.\n", yytext); 
                  return(ADJECTIVE);}

dog		|
mice		|
cat		|
dogs		|
gerbil		|
pete		|
turtle		{ printf ("\"%s\" is a noun.\n", yytext); 
                  return(NOUN);}

he		|
she		|
I		|
you		{ printf ("\"%s\" is a noun.\n", yytext); 
                  return(PRONOUN);}

a		|
an		|
the		{ printf ("\"%s\" is an article \n", yytext); 
                  return(ARTICLE);}

[a-zA-Z]+	{ printf ("\"%s\" is something else.\n", yytext);} 

\n		;

%%

