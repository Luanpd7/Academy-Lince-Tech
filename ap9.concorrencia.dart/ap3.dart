main() async {
  int contagem = 10;
  print('Iniciando lançamento');

  for (int i = 0; i < contagem; i++) {
    //A cada contagem que entrara para contagemRegressiva()irá retornar a contagem daquele indice;

    await contagemRegressiva(i);
  }

  print('Foguete lançado!');
}

//Ao entrar a contagem o bloco ira aguarda a cada 2 segundo quando entrar algum indice, assim depois mostrando a cotagem;
contagemRegressiva(int contagem) async {
  await Future.delayed(Duration(seconds: 2));
  print('Contagem : $contagem ');
}
