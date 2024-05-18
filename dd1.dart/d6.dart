void main(){
  List<int> decimal = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  List<dynamic> octal = []; 
  List<dynamic> hexadecimal = []; 
  List<dynamic> binario = []; 

  for(var i in decimal){
     binario.add(i.toRadixString(2));
     octal.add(i.toRadixString(8));
     hexadecimal.add(i.toRadixString(12));
  }

  for(int i = 0; i < decimal.length; i++){
    print('decimal: ${decimal[i]}, binário: ${binario[i]}, octal: ${octal[i]}, hexadecimal: ${hexadecimal[i]} ');
  }

  
}

