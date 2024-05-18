/* Crie um programa que inicialize uma lista com 50 números gerados aleatoriamente entre 10 e 21 e imprima a lista gerada. 
Em sequência, imprima todos os valores únicos presentes na lista. */

import 'dart:math';

void main(){
   List<int> listaOriginal = [10, 10, 20, 32, 43, 54, 31, 4, 5, 6, 3, 22, 22];
List<int> listaAtualizada = [];

for (int i = listaOriginal.length - 1; i >= 0; i--) {
  bool duplicado = false;
  for (int j = i - 1; j >= 0; j--) {
    if (listaOriginal[i] == listaOriginal[j]) {
      duplicado = true;
      break;
    }
  }
  if (!duplicado) {
    listaAtualizada.add(listaOriginal[i]);
  }
}

print('Lista Original: $listaOriginal');
print('Lista Atualizada: $listaAtualizada');
  
    
  }


 
   
