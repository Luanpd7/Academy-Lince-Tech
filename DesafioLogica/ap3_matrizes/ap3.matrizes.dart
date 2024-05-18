import 'dart:io';

import 'matriz.dart';

void main(){
  var ap3Matrizes = Ap3Matrizes();
  ap3Matrizes.inicializandoMatriz();
  ap3Matrizes.processamento();
  ap3Matrizes.getMatrizes();

  
}


class Ap3Matrizes extends Matriz{
   int? valorMultiplicar;

   @override
  void inicializandoMatriz() {
    // TODO: implement inicializandoMatriz
    super.inicializandoMatriz();

    print('Digite que o valor da multiplicação = ');
  String? valorString = stdin.readLineSync();
   valorMultiplicar = int.tryParse(valorString!);
  }

   @override
  void processamento() {
     
     for(int linhaMatriz = 0 ; linhaMatriz < linha.length; linhaMatriz++){
     List<int> lista = [];

    for (int colunaMatriz = 0 ; colunaMatriz < coluna.length; colunaMatriz++){
      

  
     lista.add( linhaMatriz );
    }

   matriz!.add(lista);

  }
   for(int l = 0; l < linha.length; l++){
     for(int c = 0; c < coluna.length; c++){
      print('Digite um valor na posição na linha $l e coluna $c ');
      final valorString = stdin.readLineSync();
      int? valorMatriz = int.tryParse(valorString!);

      matriz![l][c] = valorMatriz! * valorMultiplicar!; 
   }
  }
  }

}