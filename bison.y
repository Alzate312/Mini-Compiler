%{

//incluimos un montón de cosas xd
  #include <stdio.h>
  #include <stdlib.h>
  #include <math.h>
  #include "string.h"
  extern int yylex(void);
  extern char *yytext;
  extern int linea;
  extern FILE *yyin;
  void yyerror(char *s);
%}

/* Declaraciones */

//Lista de tokens
%start lista_i;

%token PLUS;
%token MINUS;
%token TIMES;
%token DIVIDE;
%token LEFT;
%token RIGHT;
%token START;
%token END;
%token AND;
%token OR;
%token NOT;
%token XOR;



//%type <texto> celda
//%type <real> valor

%%
/*Reglas gramaticales*/

%%

/*Cosas adicionales*/
