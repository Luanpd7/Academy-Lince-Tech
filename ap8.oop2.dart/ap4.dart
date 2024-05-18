
import 'dart:math';

void main(){
    final int valor = Random().nextInt(1000);

    final valorDobrado = Calculadora.valorComDobro(valor);
    print('O dobro do número $valor é: $valorDobrado ' );
     
}

 abstract class Calculadora{
   

 static valorComDobro(int numero){
   return numero * 2;
 }
 }



