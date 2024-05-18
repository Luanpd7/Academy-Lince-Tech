void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Ana';
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

 int contarNome(List<String> listaNomes, nome){
  int contador = 0;
  for(int i = 0; i < listaNomes.length; i++){
     if(listaNomes[i] == nome){
      contador ++;
     }
  }
  return contador;
 }