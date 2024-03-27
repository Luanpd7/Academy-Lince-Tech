void main(){
 /* Escreva uma função chamada ehAnoBissexto que receba um ano como entrada e retorna se o ano e bissexto ou nao.
  No método main, demonstre no método funcionando com os valores (bissextos) 2016, 1988, 2000 e nao bissextos 2100, 2300, 1993. */

  final List<int> anos = [2016,1988,2000,2100,2300,1993];

  for(var ano in anos){
    print('$ano = ${ehAnoBissexto(ano)}');
  }
 

}

String? ehAnoBissexto(int ano){
  if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)){
    return"é bissexto";
  }else{
    return'não é ano bissexto';
  }

 
}