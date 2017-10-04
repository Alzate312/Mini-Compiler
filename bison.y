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



/*Math expression*/
ME:	INTEGER  		{ };

  |INTEGERN  		{ };

  |REAL 		{ };

  |REALN  		{ };

	|ME PLUS ME     	{  };

	|ME MINUS ME     	{  };

	|ME TIMES ME     	{ };

	|ME DIVIDE ME 	{  };

	|LEFT ME RIGHT	{  };

/* logical expression */
LE: INTEGER  		{ };

  |INTEGERN  		{ };

  |REAL 		{ };

  |REALN  		{ };

  |NOT LE    	{  };

	|LE AND LE     	{  };

	|LE OR LE     	{ };

  |LE XOR LE     	{  };

  /* Sentence */

SE: INTEGER {};

    | IF LEFT LE RIGHT START SE END {};

    | IF LEFT LE RIGHT START SE END ELSIF LEFT LE RIGHT START SE END ELSE START SE END {}

    | IF LEFT LE RIGHT START SE END ELSE START SE END {}

%%

/*Cosas adicionales*/
