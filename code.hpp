#ifndef CODIGO_HPP_
#define CODIGO_HPP_
#include <iostream>
#include <sstream>
#include <fstream>
using namespace std;

class Code {

public:

	Code();

	/* Métodos */


  /* Abrir archivo resultado.s */
  void openFile(){

  };

  /* Abrir archivo de la ruta especificada en el parámetro, copiarlo y pegarlo en resultado.s */
  void copyFile(string source){

  };

  /* Copiar el string que se pasa como parámetro y pegarlo en resultado.s */
  void copyFile(string text){

  };

  /* Cerrar archivo resultado .s */
  void closeFile(){
    
  };

};

#endif
