import 'dart:math';

void main(){


  List<int> lista = [];

  for(int i = 0; i <= 9; i++){
    lista.add(Random().nextInt(100) + 1);
  }
  
  String resultado = 'Posição = 0 , valor ${lista[0]} \n' +
                       'Posição = 2 , valor ${lista[1]} \n' +
                         'Posição = 3 , valor ${lista[2]} \n' +
                           'Posição = 4 , valor ${lista[3]} \n' +
                             'Posição = 5 , valor ${lista[4]} \n' +
                               'Posição = 6 , valor ${lista[5]} \n' +
                                 'Posição = 7 , valor ${lista[6]} \n' +
                                   'Posição = 8 , valor ${lista[7]} \n' +
                                     'Posição = 9 , valor ${lista[8]} \n' +
                                       'Posição = 10 , valor ${lista[9]}';

  print(resultado);
}                        