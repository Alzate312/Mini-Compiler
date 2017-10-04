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

%token LEFT RIGHT;
%token START END;
%token IF ELSIF ELSE;

%left NOT
%left TIMES DIVIDE
%left PLUS MINUS
%left AND OR XOR


//%type <texto> celda
//%type <real> valor

%%
/*Reglas gramaticales*/

%%

/*Cosas adicionales*/
