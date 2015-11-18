%{
/* pos.yacc */
#include<stdio.h>

%}
     /* need to know what tokens to create! */
     
%token NOUN ARTICLE PRONOUN PERIOD VERB ADVERB ADJECTIVE PREPOSITION CONJUNCTION

%%

sentences: sentence { printf("sentence is successfully parsed!\n");}
   |       sentences sentence { printf("sentence is successfully parsed!\n");}

sentence: np vp | np vp pp;

pp: PREPOSITION ARTICLE NOUN;

np:     PRONOUN
   |    NOUN
   |    ARTICLE NOUN
   |    ARTICLE ADJECTIVE NOUN;

vp:	VERB
   |	VERB ADJECTIVE
   |    ADVERB VERB
|    ADVERB VERB ADJECTIVE
| VERB ADVERB;
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

