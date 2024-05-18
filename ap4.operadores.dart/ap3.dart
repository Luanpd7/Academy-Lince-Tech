/* Implemente uma função que receba uma lista e um elemento opcional como parâmetros, com objetivo de remover o elemento fornecido da lista.
A lista e o elemento podem ser nulos.
Retorne a lista modificada tratando os casos em que os argumentos nao forem fornecidos utilizando operadores (nao eh permitido utilizar if/else).
O retorno nao pode ser nulo */

void main(){

  List<String> lista = ['Luan','Sandi','Felipe'];

  List<String> resultado = removerElemento(lista, 'Luan');
  print('Nova lista: ${resultado.join(', ')}');

}

List<String> removerElemento(List<String>? lista, [String? elemento]){
  List<String> listaRetorno = [];
  for(String nomes in lista ?? [] ){
    elemento != nomes? listaRetorno.add(nomes) : print('você removeu esse nome');
  }
  return listaRetorno;
}