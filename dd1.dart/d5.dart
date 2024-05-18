import 'dart:math';

void main(){
  List<String> nomes = ['Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel', 'Rafaela', 'Marcio', 'Jose', 'Carlos', 'Patricia', 'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 'Samuel', 'Karina', 'Antonio','Daniel', 'Joel', 'Cristiana', 'Sebastião', 'Paula'];
  List<String> sobrenomes = ['Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga', 'Barros', 'Campos', 'Cardoso', 'Teixeira', 'Costa', 'Santos', 'Rodrigues', 'Souza', 'Alves', 'Pereira', 'Lima', 'Gomes', 'Ribeiro','Carvalho','Lopes', 'Barbosa'];

  int aleatorioNome = Random().nextInt(nomes.length);
    int aleatorioSobrenome = Random().nextInt(nomes.length);

  print('${nomes[aleatorioNome]}  ${sobrenomes[aleatorioSobrenome]}');
}