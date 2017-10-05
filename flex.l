%{
  int main(void) {}
  int yywrap(void) {}
  int yyerror(void) {}
  #define YYSTYPE double
  #include "bison.h"
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
real {integer}("."{integer})
realn -{integer}("."{integer})
integern -{digit}+
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
{real} {
  yylval.floatValue = new atof(yytext);
  return REAL;
}
{realn} {
  yylval.floatValue = new atof(yytext);
  return REALN;
}
{integern} {
  yylval.intValue = new atof(yytext);
  return INTEGERN;
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
