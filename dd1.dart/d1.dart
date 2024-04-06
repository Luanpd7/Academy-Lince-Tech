import 'dart:ffi';

void main(){

  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];
  List<double> area = [];
  List<double> perimetro = [];

  for(var raio in raios ){
    double calculoArea = 3.14159 * (raio * raio);
    area.add(calculoArea);
    double calculoPerimetro = 2 * (3.14159 * raio);
    perimetro.add(calculoPerimetro);
  }

  for( int i = 0; i < raios.length;  i ++){
    print('Raio: ${raios[i].toInt()}, Area: ${area[i].toStringAsFixed(2)}, Perimetro: ${perimetro[i].toStringAsFixed(2)}');
  }
}