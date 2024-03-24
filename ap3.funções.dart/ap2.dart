import 'dart:math';

void main(){
  final resultado1 = funcaoA(funcaoB);
  final resultado2 = funcaoA(funcaoC);

  print('$resultado1');
  print('$resultado2');
}

int funcaoA(int Function(int) funcao ){
  final resultado1 = funcao(Random().nextInt(100));
  final resultado2 = funcao(Random().nextInt(100));
  final soma = resultado1 + resultado2;
  return soma;
}

int funcaoB(int numero){
  return numero + numero;
}

int funcaoC(int parametro){
  return parametro % 2;
}

