/* Escreva uma função que receba um número inteiro 
e retorne a soma de todos os números pares até o número fornecido */

import 'dart:math';

void main(){
   int num = Random().nextInt(100);

 int soma = soImpar(num);

 print('A soma dos números pares entre 0 e $num é $soma');

}

int soImpar(int num){
  int soma = 0;
  for(int i = 0; i <= num; i++){
    if(i.isOdd){
       soma += i;
    }
  }
  return soma;
}