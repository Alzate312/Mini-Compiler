# Mini-Compiler

A homework.

## Compilation Steps:

	1. $ lex flex.l
	2. $ yacc bison.y
	3. $ g++ -g lex.yy.c bison.tab.c -o calc
