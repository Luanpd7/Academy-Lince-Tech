/* Crie um programa que inicialize uma lista com 50 números gerados aleatoriamente entre 10 e 21 e imprima a lista gerada. 
Em sequência, imprima todos os valores únicos presentes na lista. */

import 'dart:math';

void main(){
   List<int> listaOriginal = [];
   List<int> listaAtualizada = [];

  for (int i = 0; i <= 49; i++) {
    listaOriginal.add(Random().nextInt(12) + 10);
  }

  
  for (int valor in listaOriginal) {
    if (!listaAtualizada.contains(valor)) {
      listaAtualizada.add(valor);
    }
  
    
  }

  print(listaOriginal);

  print('-------------');

  print(listaAtualizada);

 
   
}