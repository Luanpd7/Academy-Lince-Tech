void main(){
  Map<String, int?> nomePessoa = {
    'Nelson' : null,
    'Jane'  :  null  ,
    'Jack'  :  16,
    'Rubert' : 37,
    'Andy' : 13,
    'Kim' : 27,
    'Robert' : 31
  };
 
 metodo(nomePessoa);

}

metodo(Map<String, Object?> map){

   map.forEach((key, value) {
    print('$key - ${value ?? 'Não informado'}');  
  });

  
}