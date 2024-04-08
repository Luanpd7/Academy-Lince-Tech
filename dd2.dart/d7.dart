/*Noo utilizar a classe List, deve ser utilizada uma classe do pacote 'dart:collections'
 especializada nesse tipo de manipulação de coleções (manipular extremidades de coleções - primeiro e ultimo item)
Quem entra na fila primeiro, sera atendido primeiro;
Cada pessoa da fila deve ter um nome e sobrenome gerado aleatoriamente. O gerador de nomes deve ser uma classe separada, que tenha apenas o método gerarNomeAleatorio;
Quando uma pessoa entra na fila, deve ser exibido no console *(Fulano Silva) entrou na fila
Quando uma pessoa for atendida, deve ser exibido no console uma mensagem dizendo *(Fulano Silva) foi atendido(a)
No método main, a fila deve ser populada com 10 pessoas;
No método main, as pessoas devem ser atendidas corretamente conforme a ordem que entraram na fila, até a fila ser esgotada */

import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main() {
    final nomes = ['Luan','Junior','Pedro','Bianca','Larissa','Nicolas'];
  final  sobrenomes = ['Pereira','Dias','Manerich','Oliveira','Maia','Nunes'];

  bool cond = true;
  final obtendoFila = Fila();
  final gerando = GeradorNomes();

  while (cond == true) {
    print("1 - Adicionar Fila");
    print("2 - Chamar Proximo");
    print('0 - sair');
    String? opc = stdin.readLineSync();

    switch (opc) {
      case "1":
        obtendoFila.entrandoPessoa(gerando.gerarNomeAleatorio(nomes, sobrenomes));
      case "2":
       try{
         obtendoFila.chamarProximaPessoa();
       }catch(e){
        print('não há ninguem na fila');
       }
        
      case "0": cond = false;
    }
  }
}



class Fila{
  Queue<String> fila = Queue();
                                    //passando por parametro e adicionando na fila a pessoa
  entrandoPessoa(String pessoa){
     fila.add(pessoa);
     print('$pessoa entrou na fila');
  }

  chamarProximaPessoa(){    //vai mostra o proximo da fila e remover o mesmo  
    print('${fila.first} foi atendido');
    fila.removeFirst();
  }

}

class GeradorNomes{
                                                       //Vai receber nome e sobrenome por parametro e vai geralos aleatoriamente
  gerarNomeAleatorio(List<String> nomes, List<String> sobrenomes){
     Random random = Random();

     String nome = nomes[random.nextInt(nomes.length)];
     String sobrenome = sobrenomes[random.nextInt(nomes.length)];
     return '$nome $sobrenome';
  }
}