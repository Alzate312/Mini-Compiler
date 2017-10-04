#include "code.hpp"

using namespace std;

Code::Code() {}

/* Métodos */

/* Abrir archivo resultado.s */
void openFile();

/* Abrir archivo de la ruta especificada en el parámetro, copiarlo y pegarlo en resultado.s */
void copyFile(string source);

/* Copiar el string que se pasa como parámetro y pegarlo en resultado.s */
void copyFile(string text);

/* Cerrar archivo resultado .s */
void closeFile();
