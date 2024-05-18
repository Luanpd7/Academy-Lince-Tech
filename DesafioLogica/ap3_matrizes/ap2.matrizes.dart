

import 'dart:io';

import 'matriz.dart';

void main(){

 var ap2Matrizes = Ap2Matrizes();
 ap2Matrizes.inicializandoMatriz();
 ap2Matrizes.processamento();
 ap2Matrizes.getMatrizes();

}


class Ap2Matrizes extends Matriz{
  @override
  void processamento() {
     for(int linhaMatriz = 0 ; linhaMatriz < linha.length; linhaMatriz++){
     List<int> lista = [];

    for (int colunaMatriz = 0 ; colunaMatriz < coluna.length; colunaMatriz++){
   
  
     lista.add(linhaMatriz);
    }

   matriz!.add(lista);

  }
  for(int c = 0; c < linha.length; c++){
     for(int l = 0; l < coluna.length; l++){
      print('Digite um valor na posição $c e $l ');
      final valorString = stdin.readLineSync();
      int? valorMatriz = int.tryParse(valorString!);
      matriz![c][l] = valorMatriz!; 
   }
  }
  }
}

