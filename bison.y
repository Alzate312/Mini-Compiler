%{

//incluimos un montón de cosas xd
  #include <stdio.h>
  #include <stdlib.h>
  #include <math.h>
  #include <string.h>
  extern int yylex(void);
  extern char *yytext;
  extern int linea;
  extern FILE *yyin;
  void yyerror(char *s);
  #define YYSTYPE int
  extern YYSTYPE yyltype;
  code.openFile();
%}

%token <number> INTEGER
%token <token> LEFT RIGHT
%token <token> START END
%token <token> IF ELSIF ELSE
%token <token> NOT TIMES DIVIDE PLUS MINUS AND OR XOR
%left NOT
%left TIMES DIVIDE
%left PLUS MINUS
%left AND OR XOR

%%


/*Reglas gramaticales*/

/* Órden de pusheo: Alto bajo decimal signo +/

/* Numbers */

N:  INTEGER  		{
  //LDA #INTEGER
  //PHA
    };

      



/*Math expression*/
ME: ME PLUS ME     	{
        //Paste adition file
      };

	|ME MINUS ME     	{
        //Paste substraction file
      };

	|ME TIMES ME     	{
        //Paste multiply file
      };

	|ME DIVIDE ME     	{
        //Paste division file
      };

	|LEFT ME RIGHT     	{
        //Operate
      };

/* logical expression */
LE:  NOT LE     	{
        //Paste NOT file
      };

	|LE AND LE    	{
        //Paste AND file
      };

	|LE OR LE     	{
        //Paste OR file
      };

  |LE XOR LE     	{
        //Paste XOR file
      };

  /* Sentence */

SE: IF LEFT LE RIGHT START SE END {
        //No sé
    };

    | IF LEFT LE RIGHT START SE END ELSIF LEFT LE RIGHT START SE END ELSE START SE END {
        //No sé
    };

    | IF LEFT LE RIGHT START SE END ELSE START SE END {
      //No sé
    };

%%

/*Cosas adicionales*/
