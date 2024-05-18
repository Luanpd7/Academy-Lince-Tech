/*Crie um programa que inicialize uma lista com 50 números gerados aleatoriamente entre 0 e 15 e imprima a lista gerada. 
Em sequência, utilize o método removeWhere para retirar todos os números pares presentes na lista, e imprima novamente.*/

import 'dart:math';

void main() {
  List<int> listaOriginal = [];
  List<int> listaAtualizada = [];

  for (int i = 0; i <= 49; i++) {
    listaOriginal.add(Random().nextInt(15) + 1);
  }

  print(listaOriginal);

  listaOriginal.removeWhere((numeroPar) => numeroPar % 2 == 0);

  listaAtualizada = [...listaOriginal];

  print(listaAtualizada);
}
