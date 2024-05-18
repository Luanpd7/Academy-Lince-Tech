

void main() {
  List<List<String>> musicas = [
    [
      'Whats My Age Again',
      'Tom Delonge',
      'Enema Of The State',
      '3.00',
    ],
    ['Candy', "Machine Gun Kelly", 'Tickets To My Downfall', '4.25'],
    ['So os loucos sabem', 'Charlie Brown Junior', 'Camisa 10', '2.25'],
    ['Cracolândia', 'Mc Hariel', 'Cracolândia', '5.00']
  ];

  //Numero de musicas
  print(musicas.length);

  // Tempo total em horas das musicas
  double totalHorasMusicas = infoMusicas(musicas);
  print(totalHorasMusicas);

  //Buscando na biblioteca como tratamento de exceção
  try{
    String filtrado = buscarMusica(musicas, artista: 'Mc Harrel');
  print(filtrado);
  }catch(e){
    print('Não econtrado!!');
  }


}


//Metodo para retorna a quantidade de horas da musicas da biblioteca
double infoMusicas(List<List<String>> musicas) {
  double totalHorasMusicas = 0;
  for (int i = 0; i < musicas.length; i++) {
    totalHorasMusicas += double.parse(musicas[i][3]);
  }
  return totalHorasMusicas;
}

 //Metodo para buscar musicas pelo titulo , artista ou album
buscarMusica(List<List<String>> musicas, {String titulo = 'nada', String artista = 'mundo', String album = 'Olá'}) {
  for (int i = 0; i < musicas.length; i++) {
    if (titulo == musicas[i][0] || artista == musicas[i][1] || album == musicas[i][2]) {
      return musicas[i].join(', ');
    }
  }
  
}
