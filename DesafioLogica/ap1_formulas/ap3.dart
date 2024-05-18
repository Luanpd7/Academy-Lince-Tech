import 'dart:io';
import 'dart:math';

// Função principal
void main() {
  // Solicita ao usuário que digite os coeficientes a, b e c
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