/* Crie uma classe chamada Pessoa com os seguintes atributos privados: nome, idade, altura
A classe deve ter um setter para a idade, que valida se o valor e maior ou igual a zero antes de atribuir o valor
A classe deve ter um getter para a idade
Em seguida, crie um objeto da classe Pessoa, seguindo o modelo:
Pode ter qualquer nome
A idade deve ser um número inteiro gerado aleatoriamente, entre 1 e 100
A altura deve ser um número decimal gerado aleatoriamente, entre 1.0 e 2.3
Utilize os setters para atribuir os valores aos atributos da pessoa
Em seguida, utilize os getters para obter os valores e exibi-los no console:
Nome: XXXXXXXXXXXXXXXXX */

import 'dart:math';

void main(){
  final pessoa = Pessoa();

  pessoa.setNome = 'Luan';
  pessoa.setIdade = 2;
  pessoa.setAltura = (Random().nextDouble() * 1.3) + 1;

  print('Nome = ${pessoa.getNome}');
  print('Idade = ${pessoa.getIdade}');
  print('Altura = ${pessoa.getAltura.toStringAsFixed(2)}');
}

class Pessoa{
  String? _nome = '';
  int? _idade = 0;
  double? _altura = 0;

  set setNome(String nome) => _nome = nome;

  set setIdade(int idade) => idade >= 0? _idade = idade: _idade = null;

  set setAltura(double altura) => _altura = altura;

  
  get getNome => this._nome;

  get getIdade =>  this._idade!;

  get getAltura => this._altura;
  
  
}