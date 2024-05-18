import 'ap2.matrizes.dart';
import 'matriz.dart';


void main(){


  var matriz1 = Ap4Matrizes();
  matriz1.inicializandoMatriz();
  matriz1.processamento();
  matriz1.getMatrizes();
  matriz1.retornandoMatriz();
 


   var matriz2 = Ap4Matrizes();
  matriz2.inicializandoMatriz();
  matriz2.processamento();
  matriz2.getMatrizes();
  matriz2.retornandoMatriz();

  
 var matriz3 = Ap4Matrizes();
 matriz3.multiplicandoMatriz(matriz1.retornandoMatriz(), matriz2.retornandoMatriz());
 matriz3.getMatrizMultiplicada();
 


 

}


//Erro na matriz 
class Ap4Matrizes extends Ap2Matrizes{
    List<List<int>>? matrizMultiplicada = [];
  multiplicandoMatriz(List<List<int>>? matriz1, List<List<int>>? matriz2){
    matrizMultiplicada = [];

    print('matriz 1 = $matriz1 , matriz 2 = $matriz2 ');

    print(matriz1!.length);
    
    for(int i = 0; i < matriz1.length ; i++){
              List<int> lista = [];
        for(int j = 0; j < matriz1.length ; j++){
       
         lista.add(matriz1[i][j] * matriz2![i][j]);
       
    }
      
         matrizMultiplicada!.add(lista);
    }
   
  }

 void getMatrizMultiplicada(){
    for(int i = 0; i < matrizMultiplicada!.length; i++){
      print(matrizMultiplicada![i]);
  
    }
   
  }

  

  
}