%{
/* pos.yacc */
#include<stdio.h>

%}
     /* need to know what tokens to create! */
     
%token NOUN ARTICLE PRONOUN PERIOD VERB ADVERB ADJECTIVE PREPOSITION CONJUNCTION

%%

sentences: sentence { printf("sentence is successfully parsed!\n");}
   |       sentences sentence { printf("sentence is successfully parsed!\n");}

sentence: np vp;

np:     PRONOUN
   |    NOUN
   |    ARTICLE NOUN
   |    ARTICLE ADJECTIVE NOUN;

vp:	VERB
   |	VERB ADJECTIVE;
%%


int main(void)
{
      return(yyparse());
}

yyerror(s)
char *s;
{
  fprintf(stderr, "%s\n",s);
}
yywrap(void) { return 1; }

