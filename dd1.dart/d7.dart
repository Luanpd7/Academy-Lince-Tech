void main(){
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

     print('For: ${somadorFor(numeros)}');
     print('While: ${somadorWhile(numeros)}');
     print('Recursiva: ${somaRecursivaLista(numeros, 0)}');
     print('List: ${somadorLista(numeros)}');

}


int somadorFor(List<int> numeros){
    int  somaFor = 0;
   for(int num in numeros){
   somaFor += num;
  }
  return somaFor;
}

int somadorWhile(List<int> numeros){
  int contador = 0;
  int somaWhile = 0;
  while(contador < numeros.length){
  
  somaWhile += numeros[contador];
  contador++;
}
return somaWhile;
}


int somaRecursivaLista(List<int> lista, int index) {
  if (index == lista.length) {
    return 0;
  }
  return lista[index] + somaRecursivaLista(lista, index + 1);
}



 dynamic somadorLista(List<int> numeros){
  int somaLista = 0;
  numeros.forEach((element) {
  somaLista += element;
},);
return somaLista;
}