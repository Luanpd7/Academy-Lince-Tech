import 'dart:io';

// Função principal
void main() {
  // Solicita ao usuário que digite um número decimal
  stdout.write('Digite um número decimal: ');
  int decimal = int.parse(stdin.readLineSync()!);

  // Converte o número para binário, octal e hexadecimal
  String binario = decimal.toRadixString(2);
  String octal = decimal.toRadixString(8);
  String hexadecimal = decimal.toRadixString(16);

  // Exibe as representações
  print('Representação Binária: $binario');
  print('Representação Octal: $octal');
  print('Representação Hexadecimal: $hexadecimal');
}