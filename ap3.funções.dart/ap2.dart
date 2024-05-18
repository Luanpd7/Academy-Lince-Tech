import 'dart:math';

void main(){
  final resultado1 = funcaoA(funcaoB);
  /* 
  Representando como passar um parâmetro para um função dentro de um parametro da função principal
  int num = funcaoA;
  int soma = funcaoB(num); 
  
  */
  
  final resultado2 = funcaoA(funcaoC);

  print('$resultado1');
  print('$resultado2');
}

int funcaoA(int Function(int) funcao ){
  final resultado1 = funcao(10);
  final resultado2 = funcao(2);
  final soma = resultado1 + resultado2;
  return soma;
}

int funcaoB(int numero){
  return numero + numero;
}

int funcaoC(int parametro){
  return parametro % 2;
}

