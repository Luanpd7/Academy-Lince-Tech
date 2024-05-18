import 'dart:io';
import 'dart:math';

// Função principal que exibe o menu e chama os programas selecionados
void main() {
  while (true) {
    print('Menu:');
    print('1. Converter número decimal para binário, octal e hexadecimal');
    print('2. Calcular raízes de uma equação quadrática (Bhaskara)');
    print('3. Sair');
    stdout.write('Escolha uma opção (1-3): ');
    String? escolha = stdin.readLineSync();

    if (escolha == '1') {
      converterDecimal();
    } else if (escolha == '2') {
      calcularBhaskara();
    } else if (escolha == '3') {
      print('Saindo do programa...');
      break;
    } else {
      print('Opção inválida. Tente novamente.');
    }
  }
}

// Função para converter número decimal para binário, octal e hexadecimal
void converterDecimal() {
  stdout.write('Digite um número decimal: ');
  int decimal = int.parse(stdin.readLineSync()!);

  String binario = decimal.toRadixString(2);
  String octal = decimal.toRadixString(8);
  String hexadecimal = decimal.toRadixString(16);

  print('Representação Binária: $binario');
  print('Representação Octal: $octal');
  print('Representação Hexadecimal: $hexadecimal');
}

// Função para calcular as raízes de uma equação quadrática (Bhaskara)
void calcularBhaskara() {
  stdout.write('Digite o coeficiente a: ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o coeficiente b: ');
  double b = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o coeficiente c: ');
  double c = double.parse(stdin.readLineSync()!);

  double delta = pow(b, 2) - 4 * a * c;

  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('As raízes da equação são reais e diferentes.');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('As raízes da equação são reais e iguais.');
    print('x1 = x2 = $x');
  } else {
    print('A equação não possui raízes reais.');
 }
}