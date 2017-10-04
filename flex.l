%{
  #define YYSTYPE double
  #include "calc.tab.h"
  #include <stdlib.h>
  #include "Code.hpp"
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
{if} return IF;
{elsif} return ELSIF;
{else} return ELSE;
{and} return AND;
{or} return OR;
{not} return NOT;
{xor} return XOR;
"+" return PLUS;
"-" return MINUS;
"*" return TIMES;
"/" return DIVIDE;
"(" return LEFT;
")" return RIGHT;
"{" return START;
"}" return END;
<<EOF>> {
	yyterminate();
}
%%
main(){
	yylex();
}
