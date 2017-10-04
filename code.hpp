#ifndef CODIGO_HPP_
#define CODIGO_HPP_
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

class Code {

private:

/* Atributos */

FILE *resultadoFile;

public:

/* Métodos */

/* Constructor */
Code(FILE *_resultadoFile);

/* Abrir archivo resultado.s */
void openFile();

/* Abrir archivo de la ruta especificada en el parámetro, copiarlo y pegarlo en resultado.s */
void copyFileFromSource(string source);

/* Copiar el string que se pasa como parámetro y pegarlo en resultado.s */
void copyFileFromString(string text);

/* Cerrar archivo resultado .s */
void closeFile();

};
#endif
