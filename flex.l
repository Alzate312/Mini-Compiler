%{
  //Aqui va algo xd
  #define YYSTYPE double
  #include "calc.tab.h"hola 
  #include <stdlib.h>
%}

/*Definiciones*/

white [ \t\n]+
digit [0-9]
integer {digit}+
real {integer}("."{integer})?
if (if)
elsif (else if)
else (else)


%%
/*Reglas*/

{white} { }
{integer} {
  yylval.intValue = atof(yytext);
  return INTEGER;
}
{real} {
  yylval.floatValue = new atof(yytext);
  return REAL;
}


{if} return IF;
{elsif} return ELSIF;
{else} return ELSE;

"+" return PLUS;
"-" return MINUS;
"*" return TIMES;
"/" return DIVIDE;
"(" return LEFT;
")" return RIGHT;
"{" return START;
"}" return END;
"AND" return AND;
"OR" return OR;
"NOT" return NOT;
"XOR" return XOR;

<<EOF>> {
	yyterminate();
}

%%

//Aquí va algo más xd

//Llamada al analizador lexico desde el main
main(){
	yylex();
}
