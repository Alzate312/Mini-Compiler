#include "code.hpp"
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

Code::Code() {}

	Code(FILE *_resultadoFile){
    FILE *resultadoFile = FILE *_resultadoFile;
  };

	/* Métodos */

  /* Abrir archivo resultado.s */
  void Code::openFile(){
    resultadoFile = fopen("Source/resultado.s", "a+");
  };

  /* Abrir archivo de la ruta especificada en el parámetro, copiarlo y pegarlo en resultado.s */
  void Code::copyFile(string source){
    ifstream in("Source/resultado.s");
    ofstream out(source, ios_base::out | ios_base::app);

    for (string str; getline(in, str); ){
      out << str;
    }
  };

  /* Copiar el string que se pasa como parámetro y pegarlo en resultado.s */
  void Code::copyFile(string text){
    fprintf(fp, text);
    fprintf(fp, \n);
  };

  /* Cerrar archivo resultado .s */
  void Code::closeFile(){
    fclose(resultadoFile);
  };

};
