/* O baralho permite empilhar uma carta por vez
O baralho permite remover uma carta por vez, a carta removida deve sempre ser a carta que esta no topo do baralho;
As cartas so podem ser criadas com os naipes validos (paus/copas/espadas/ouros)
No método main, deve-se incluir no baralho as seguintes cartas, na ordem especificada:
A (paus - U+2663)
A (copas - U+2665)
A (espadas - U+2660)
A (ouros - U+2666) */

import 'dart:io';
import 'dart:math';

void main(){
 bool cond = true;
 final baralho = Baralho();
 List<String> cartas = ['paus - U+2663', 'copas - U+2665', 'espadas - U+2660', 'ouros - U+2666' ];

 while(cond == true){
   print('Selecione uma opção');
  String? opc = stdin.readLineSync();

  switch(opc){
    case '1' : baralho.addCartaNoBaralho(cartas);
    case '2' : baralho.todosBaralho();
    case '3' : baralho.removerCarta();
    case '0' : cond == false;
  }

 }

}

 class Baralho{
  List<String> baralho = [];
     

  addCartaNoBaralho(List<String> cartas){
    for(int i = 0; i <= 10; i++){
  Random random = Random();
   baralho.add(cartas[random.nextInt(cartas.length)]);
    }
}


 todosBaralho(){
      for(int i = 0; i < baralho.length;  i++ ){
    
         print(baralho[i]);
      }
 }

 removerCarta(){
     baralho.removeLast();
   }
 }
