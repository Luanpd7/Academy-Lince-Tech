void main(){
  List<String> listaString = ['10' , '2XXL7' ,'JOJ0','99','381','AD44','47','2B','123','78'];
 

 
  List<int> convertido = ehInteiros(listaString);
  print("Numeros = ${convertido.join(', ')}");
  

  
  }
 
 List<int> ehInteiros(List<String>lista){
   List<int> listaInteiros = [];
   for(var num in lista ){
    int? converter = int.tryParse(num);

    converter ??= 0;

    listaInteiros.add(converter);
   }
   return listaInteiros;
  }



