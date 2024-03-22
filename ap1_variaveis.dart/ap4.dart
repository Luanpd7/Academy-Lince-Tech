import 'dart:math';

void main(){
  //Random random = Random();

  double num1 = Random().nextInt(100) + 1;
  double num2 = Random().nextInt(100) + 1;
  double div = num1/num2;

  int inteiro = div.toInt();

  var decimal =  div - div.floor();;

  print('Numero 1 = $num1');
  print('Numero 2 = $num2');
  print('Divisão entre os dois numeros = $div');
  print('Parte inteira da divisão = $inteiro');
  print('Parte decimal da divisão = $decimal');
}