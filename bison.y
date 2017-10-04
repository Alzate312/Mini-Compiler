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

%token INTEGER
%token INTEGERN
%token REAL
%token REALN
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

E:	INTEGER  		{ };

  |INTEGERN  		{ };

  |REAL 		{ };

  |REALN  		{ };

	|E PLUS E     	{  };

	|E MINUS E     	{  };

	|E TIMES E     	{ };

	|E DIVIDE E 	{  };

	|LEFT E RIGHT	{  };


BE: INTEGER  		{ };

  |INTEGERN  		{ };

  |REAL 		{ };

  |REALN  		{ };

	|NOT BE    	{  };

	|BE AND BE     	{  };

	|BE OR BE     	{ };

  |BE XOR BE     	{  };

%%

/*Cosas adicionales*/
