/* Crie uma função que receba uma string e converta essas strings para inteiro. 
Utilize uma estrutura try-catch para tratar possíveis erros ao converter a entrada do usuário para um número inteiro.

Se ocorrer um erro, exiba a mensagem "Entrada invalida. Insira apenas números inteiros." Caso contrario, exiba o número digitado. */

void main(){
 
 converterString('a');
 
}

 converterString(String valorString){
 int valorNum;
 
  try{
     valorNum = int.parse(valorString);
     print(valorNum);
  }catch( e){
      print('Entrada invalida. Insira apenas números inteiros.');
  }
  
    //  throw Exception("Entrada invalida");

  
}