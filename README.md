# Mini-Compiler

A homework.

## Compilation Steps:

	1. $ flex flex.l
	2. $ bison -d bison.y
	3. $ g++ -g -o lex.yy.c bison.tab.c -lfl
