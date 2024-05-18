import 'dart:io';
import 'dart:math';

// Função principal
void main() {
 
  stdout.write('Digite o comprimento do primeiro cateto: ');
  double cateto1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o comprimento do segundo cateto: ');
  double cateto2 = double.parse(stdin.readLineSync()!);

  double hipotenusa = calcularHipotenusa(cateto1, cateto2);

  print('A hipotenusa do triângulo retângulo é: $hipotenusa');
}

double calcularHipotenusa(double cateto1, double cateto2) {
  return sqrt(pow(cateto1, 2) + pow(cateto2, 2));
}