/*Crie um programa de terminal que:
Pergunte um número X ao usuário, que será usado como tamanho para criação de vetores
Permita o usuário a informar os valores de todas as posições de um vetor (v1)
Gere um novo vetor (v2) de mesmo tamanho, com números aleatórios em cada posição
Crie um terceiro vetor (v3) de mesmo tamanho, sendo este a soma dos vetores iniciais
Imprima no terminal todos os vetores (v1, v2 e v3) */

import 'dart:io';
import 'dart:math';

void main(){
  bool cond;

  print('Digite o tamanho do vetor = ');
  String? tamanhoString = stdin.readLineSync();
  int? tamanho = int.tryParse(tamanhoString!);

  var vetores = PovoandoVetores();
  vetores.inserindoTamanhoVetores(tamanho);


  while(cond = true){
  print('Digite 1 para inserir valor no vetor');
  print('Digite 2 para gerar  valores aleátorio no vetor');
  print('Digite 3 para somar valores no vetor');
  print('Digite 4 para mostrar os vetores');
  print('Digite 0 para sair');
  String? opc = stdin.readLineSync();

  switch(opc){
    case '1' :  vetores.informarValorVetor();
    case '2' :  vetores.valorAletorios();
    case '3' :  vetores.somandoValoresVetor();
    case '4' :  vetores.mostrandoVetores();
    case '0' :  cond = false;
  }

  print('Deseja continuar? 1 sim - 2 nao');
   String? sair = stdin.readLineSync();
   if(sair == '2'){
    cond = false;
   }


  }

}

class PovoandoVetores{
  late List<int> v1;
  late List<int> v2;
  late List<int> v3;

  Random random = Random();

  inserindoTamanhoVetores(tamanhoVetor){
    this.v1 = List.filled(tamanhoVetor, 0);
    this.v2 = List.filled(tamanhoVetor, 0);
    this.v3 = List.filled(tamanhoVetor, 0);
  }

  informarValorVetor(){
    for(int i = 0; i < v1.length; i++){
      print('Digite um valor na posição $i do vetor = ');
       String? valorString = stdin.readLineSync();
      int? valor = int.tryParse(valorString!);
      v1[i] = valor!;
    }
  }

  valorAletorios(){
      for(int i = 0; i < v2.length; i++){
        final numAleatorio = random.nextInt(v2.length);
        v2[i] = numAleatorio;
      }
  }

  somandoValoresVetor(){
    for(int i = 0; i < v3.length; i++){
      var soma = v1[i] + v2[i];
      v3[i] = soma;
    }
  }

  mostrandoVetores(){
    print('Vetor 1 = $v1');
    print('Vetor 2 = $v2');
    print('Vetor 3 = $v3');
  }

}