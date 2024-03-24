import 'dart:math';

void main() {
  final random = Random();
  final raios = List.generate(10, (_) => random.nextDouble() * 99 + 1);

  for (double raio in raios) {
    double area = calcularArea(raio);
    double perimetro = calcularPerimetro(raio);
    print('Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}

List<double> gerarRaiosAleatorios(int quantidade, double min, double max) {
  Random random = Random();
  List<double> raios = [];
  for (int i = 0; i < quantidade; i++) {
    double raio = min + random.nextDouble() * (max - min);
    raios.add(raio);
  }
  return raios;
}

double calcularArea(double raio) {
  return pi * raio * raio;
}

double calcularPerimetro(double raio) {
  return 2 * pi * raio;
}