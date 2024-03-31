

import 'dart:math';

import '../ap3.funções.dart/ap3.dart';

void main(){

  final random = Random();

  try {
    final retangulo = Retangulo(
      random.nextDouble() * 99,
      random.nextDouble() * 99,
    );

    double area = retangulo.calcularArea();
    print("Area do retângulo: ${area.toStringAsFixed(2)}");
  } on Exception catch (e) {
    print(e);
  }
  

}

 abstract class Forma{
   calcularArea(){
  }
}

class Retangulo implements Forma{

   double? _base;
   double? _altura;

 Retangulo(double base, double altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }

    this._base = base;
    this._altura = altura;
  }

   

  @override
  calcularArea() {
 return _base! * _altura!;
  }

  }