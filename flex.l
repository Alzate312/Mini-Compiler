%{
  int main(void) {}
  int yywrap(void) {}
  int yyerror(void) {}
  #define YYSTYPE double
  #include "bison.tab.h"
  #include <ctype.h>
  #include <iostream>
  #include <stdlib.h>
  #include <stdio.h>
  #include <math.h>
  #include "code.hpp"
  Code code;
%}
white [ \t\n]+
digit [0-9]
integer {digit}+
if (if)
elsif (elsif)
else (else)
and (and)
or (or)
not (not)
xor (xor)
%%
{white} { }
{integer} {
  yylval.intValue = atof(yytext);
  return INTEGER;
}

{if} {return IF;}
{elsif} {return ELSIF;}
{else} {return ELSE;}
{and} {return AND;}
{or} {return OR;}
{not} {return NOT;}
{xor} {return XOR;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return TIMES;}
"/" {return DIVIDE;}
"(" {return LEFT;}
")" {return RIGHT;}
"{" {return START;}
"}" {return END;}
<<EOF>> {
	yyterminate();
}
%%
int main(void) {
   yyparse();
   return 0;
}
int yywrap(void) {
   return 0;
}
int yyerror(void) {
    printf("Error\n");
    exit(1);
}
