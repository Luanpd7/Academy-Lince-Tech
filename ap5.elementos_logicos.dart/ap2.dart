import 'dart:math';

void main() {
  final random = Random();

  // Executar 5 vezes
  for (var indice = 0; indice < 5; indice++) {
    final numeroAleatorio = random.nextInt(25) + 1;
    final letraCorrespondente = pegarLetra(numeroAleatorio);

    // Imprimir número e letra
    print('Numero $numeroAleatorio -> Letra $letraCorrespondente');
  }
}

String pegarLetra(int numero) {
  return String.fromCharCode('A'.codeUnitAt(0) + numero - 1);
}