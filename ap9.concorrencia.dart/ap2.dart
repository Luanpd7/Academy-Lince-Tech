Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

baixarImagem(url) async{
  await Future.delayed(Duration(seconds: 2));

  print('Imagem $url baixada com sucesso!');
}

baixarImagens(List<String> urls) async{
  print('baixando imagem....');
   for (var url in urls){
      await baixarImagem(url);
   }

   print('Abaixado com sucesso');
}