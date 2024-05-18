/* ~Eu decidi utilizar uma função para fazer a verificação do numero, se retornar um num é porque vai ser PAR  ese retorna null vai 
ser impar e vai retornar um erro, assim trantando vou mostrar a mensagem. */


void main() {
  soPares(tratandoPar, 4);
}

soPares(Function(int) tratamento, int num) {
  try {
    tratamento(num).isEven;
    print('Entrada correta, você inseriu um número par. ${tratamento(num)}');
  } catch (e) {
    throw 'Entrada inválida. Insira apenas números pares.';
  }
}


  //Tratando o par em uma função 
int? tratandoPar(int num) {
  if (num.isEven) {
    return num;
  } else {
    return null;
  }
}
