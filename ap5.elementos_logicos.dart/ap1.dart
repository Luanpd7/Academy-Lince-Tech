//Crie uma função que retorne uma lista contendo apenas os números impares começando do zero até um valor fornecido.

void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

 for(int num in soImpar(numeros)){
   print('Impar: ${num}');
 } 
 
}

 soImpar(List<int> numeros){
  List<int> numImpar = [];
   for (int num in numeros) {
    if (num.isOdd) {
      numImpar.add(num);
    }
  }
  return numImpar;
  
}


