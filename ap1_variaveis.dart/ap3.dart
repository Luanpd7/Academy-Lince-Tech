import 'dart:math';

void main() {
 
  Random random = Random();
   int numero1 = random.nextInt(100) + 1;
   int numero2 = random.nextInt(100) + 1;


  print('Número 1: $numero1');
  print('Número 2: $numero2');

  final int numero3 = numero2;
  numero2 = numero1;
  numero1 = numero3;

  print('Número 1 invertido: $numero1');
  print('Número 2 invertido: $numero2');

}