/* simple lex program that takes in a string of letters    */
/* and outputs the Caesar Cipher version of it - note      */
/* that initially the programs shifts letters by 3, but    */
/* it can easily be modified to implement different shifts */

/* rule section */
%%
[a-z]	{ char ch = yytext[0];
  ch -= 4;
          if (ch < 'a') ch += ('z'+1-'a');
          printf ("%c", ch);
        }
          
[A-Z]	{ char ch = yytext[0];
          ch -= 4;
          if (ch < 'A') ch += ('Z'+1-'A');
          printf ("%c", ch);
        }
%%

int main (void) {
        return yylex ();
}

int yywrap(void) {
        return 1;
}
