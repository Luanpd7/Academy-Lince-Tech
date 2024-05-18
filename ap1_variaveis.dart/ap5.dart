void main() {
  Agrupar agrupar = Agrupar();

  print(agrupar.toString());
}

class Agrupar {
  static const String nome = 'Luan';
  static const String sobrenome = 'Pereira';
  static const int idade = 20;

  static const bool ativo = true;

  static const double peso = 60.00;

  String? nacionalidade;

  @override
  String toString() {
    // TODO: implement toString
    return 'nome = ' +
        nome +
        '\n'
            'sobrenome = ' +
        sobrenome +
        '\n'
            'idade = ' +
        idade.toString() +
        '\n'
            'situação = ' +
        ativo.toString() +
        '\n'
            'peso = ' +
        peso.toString() +
        '\n'
            'nacionalidade = ${nacionalidade != null ? nacionalidade : 'Não tem nacionalidade'}';
  }
}
