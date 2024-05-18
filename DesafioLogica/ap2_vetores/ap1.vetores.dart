import 'dart:math';
import 'dart:io';

void main() {
  print('Digite o tamanho do vetor = ');
  String? tamanhoString = stdin.readLineSync();
  int? tamanho = int.tryParse(tamanhoString!);

  var vetor = PovoandoVetorAleatorio();
  vetor.inserindoTamanhoVetor(tamanho!);
  print(vetor.mostrandoVetor());
}

class PovoandoVetorAleatorio {
  List<int>? vetor;

  Random random = Random();

  inserindoTamanhoVetor(int tamanhoVetor) {
    vetor =
        List.generate(tamanhoVetor, (index) => random.nextInt(tamanhoVetor));
  }

  mostrandoVetor() {
    print(vetor);
  }
}
