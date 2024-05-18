/* Nesta refatoração decidi excluir a classe Produto e a classe FornecedorDeBebidas então adicionei um Map 
de produtos e as suas funcionalidades numa classe Bebida, assim no main istancio primeiramente um objeto da classe Pessoa 
e depois instancio a classe Bebida */

import 'dart:math';

void main() {
  final pessoa = Pessoa();    
  final consumo = Bebida(pessoa);
  print(consumo.consumindoBebida());
}

// Classe que representa uma bebida
class Bebida {
  // Mapa de produtos disponíveis com seus valores calóricos
  Map<String, int> produtos = {
    'Agua': 0,
    'Refrigerante': 200,
    'Suco de fruta': 100,
    'Energetico': 135,
    'Cafe': 60,
    'Cha': 35
  };

  Pessoa pessoa; // Instância de uma Pessoa

  Bebida(this.pessoa); // Construtor que recebe uma Pessoa como parâmetro

  // Método para consumir bebidas
  consumindoBebida() {
    final bebidasDisponiveis = produtos.keys.toList();

    // Consumindo produtos fornecidos
    for (var i = 0; i < 5; i++) {
      String bebida =
          bebidasDisponiveis[Random().nextInt(bebidasDisponiveis.length)];
      pessoa.refeicao(bebida, produtos); // Chama o método de refeição da Pessoa
    }

    pessoa.informacoes(); // Exibe as informações de calorias consumidas pela Pessoa
  }
}

// Classe que representa uma pessoa
class Pessoa {
  int _caloriasConsumidas = 0; // Calorias consumidas pela pessoa

  /// Imprime as informações de calorias consumidas pela pessoa
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto (bebida) e aumenta o número de calorias consumidas
  void refeicao(String bebidaConsumida, Map<String, int> produtos) {
    final calorias = produtos[bebidaConsumida]; // Obtém as calorias da bebida consumida
    print('Consumindo $bebidaConsumida $calorias calorias');

    _caloriasConsumidas += calorias!; // Incrementa as calorias consumidas pela pessoa
  }
}