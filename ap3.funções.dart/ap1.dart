import 'dart:math';

void main() {
  //lsita geradas
  final lista1 = List.generate(5, (_) => Random().nextInt(100));
  final lista2 = List.generate(5, (_) => Random().nextInt(100));

  final lista3 = List.generate(5, (_) => Random().nextInt(100));
  final lista4 = List.generate(5, (_) => Random().nextInt(100));


   //passando por parametro as lista 
  imprimirListas(lista1, lista2);
  print('-------------------');

   
   //imprimindo a lista somada 
  final resultado = ListaSomada(lista3, lista4);
  print('Lista: ${resultado.join(',')}');
}


void imprimirListas(List<int> lista1, List<int> lista2) {
  if (lista1.length >= 0 || lista1.length == lista2.length) {
    print('Lista: ${lista1.join(', ')}');
    print('Lista: ${lista2.join(', ')}');
  } else {
    print('Lista vazia');
  }
}

List<int> ListaSomada(List<int> lista1, List<int> lista2) {
  List<int> soma = [];
  for (int i = 0; i <= 4; i++) {
    soma.add(lista1[i] + lista2[i]);
    print('${lista1[i]} + ${lista2[i]}');
  }
  return soma;
}
