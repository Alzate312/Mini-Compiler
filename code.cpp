#include "code.hpp"

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

  };

  /* Copiar el string que se pasa como parámetro y pegarlo en resultado.s */
  void Code::copyFile(string text){

  };

  /* Cerrar archivo resultado .s */
  void Code::closeFile(){
    fclose(resultadoFile);
  };

};
