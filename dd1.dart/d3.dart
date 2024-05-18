void main(){
  String texto = "parágrafo: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor";
  
   int numeroPalavras = contarPalavras(texto);
   int tamanhoTexto = texto.length;
   int numeroFrase = contarFrases(texto);
   int numeroVogais = contarVogais(texto);
   String numeroConsoantes =  contarConsoantes(texto);

  print('Numero de palavras: $numeroPalavras \n ' + 
  ' tamanho do texto: $tamanhoTexto \n ' +
  'Numero de frases: $numeroFrase \n' + 
  'Numero de vogais: $numeroVogais \n ' +
  'Numero de consoantes: $numeroConsoantes ');

}

int contarPalavras(String texto) {
  List<String> palavras = texto.split(RegExp(r'\s+'));
  return palavras.length;
}

int contarFrases(String texto) {
  List<String> frases = texto.split(RegExp(r'[.!?]+'));
  return frases.length;
}

int contarVogais(String texto) {
  int numeroVogais = 0;
  String vogais = "aeiouAEIOU";
  for (int i = 0; i < texto.length; i++) {
    if (vogais.contains(texto[i])) {
      numeroVogais++;
    }
  }
  return numeroVogais;
}

String contarConsoantes(String texto) {
  List<String> consoantes = RegExp(r'[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]').allMatches(texto).map((m) => m.group(0)!).toList();
  return consoantes.join(", ");
}





/*Numero de palavras: 20  
Tamanho do texto: 139  
Numero de frases: 3  
Numero de vogais: 50  
Consoantes encontradas: b, c, d, g, h, l, m, n, p, q, r, s, t, v   */