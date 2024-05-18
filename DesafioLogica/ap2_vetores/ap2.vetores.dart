import 'dart:io';

void main() {
  print('Digite o tamanho do vetor = ');
  String? tamanhoString = stdin.readLineSync();
  int? tamanho = int.tryParse(tamanhoString!);

  var vetor = PovoandoVetor(List.filled(tamanho!, 0));
  vetor.inserindoValorVetor();
  vetor.mostrandoVetor();
}

class PovoandoVetor {
  List<int> vetor;

  PovoandoVetor(this.vetor);

  inserindoValorVetor() {
    for (int i = 0; i < vetor.length; i++) {
      print('Digite um valor na posição $i do vetor = ');
      String? valorString = stdin.readLineSync();
      int? valor = int.tryParse(valorString!);

      vetor[i] = valor!;
    }
  }

  mostrandoVetor() {
    print(vetor);
  }
}
