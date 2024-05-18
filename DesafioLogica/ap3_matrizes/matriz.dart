import 'dart:io';
import 'dart:math';

class Matriz{

   late  List<int> linha = List.filled(tamanhoLinha!, 0);
  late List<int> coluna = List.filled(tamanhoColuna!, 0);

  List<List<int>>? matriz = [];

  int? tamanhoLinha;
   int? tamanhoColuna;

  void inicializandoMatriz(){
    print('Digite o tamanho da sua matriz = ');


  
   print('tamanho da linha = ');
   String? tamanhoStringL = stdin.readLineSync();
   tamanhoLinha = int.tryParse(tamanhoStringL!);


   print('tamanho da coluna = ');
  String? tamanhoStringC = stdin.readLineSync();
   tamanhoColuna = int.tryParse(tamanhoStringC!);



  }

  void processamento(){
     for(int linhaMatriz = 0 ; linhaMatriz < linha.length; linhaMatriz++){
     List<int> lista = [];

    for (int colunaMatriz = 0 ; colunaMatriz < coluna.length; colunaMatriz++){
       Random random = Random();
       int valor = random.nextInt(linha.length);
     lista.add(valor);
    }

   matriz!.add(lista);
  }
  }

  void getMatrizes(){
    for(int i = 0; i < linha.length; i++){
      print(matriz![i]);
  
    }
   
  }

  List<List<int>> retornandoMatriz(){
    return matriz!;
  } 
}