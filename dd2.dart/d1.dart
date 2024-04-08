// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -----------------------------------------------------------
class MeioDeComunicacao {
  Telefone() {
    return 1;
  }

  fazerLigacao(String tel) {
    print('${aleatorio()}Ligando para (47) 99876-5432...');
  }
}

class Celular extends MeioDeComunicacao {}

class Telefone extends MeioDeComunicacao {}

class Orelhao extends MeioDeComunicacao {}
