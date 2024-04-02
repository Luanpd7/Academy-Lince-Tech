import 'dart:math';

void main(){
  

  int i= Random().nextInt(generosMusicais.values.length);
  var favorito =  generosMusicais.values[i];
 
 switch (favorito) {
    case generosMusicais.trap:
      print('Meu gênero musical preferido e o trap');
      break;
    case generosMusicais.funk:
      print('Meu gênero musical preferido e o pagode');
      break;
    case generosMusicais.samba:
      print('Meu gênero musical preferido e o funk');
      break;
    case generosMusicais.rock:
      print('Meu gênero musical preferido e o rock');
      break;
    case generosMusicais.sertanejo:
      print('Meu gênero musical preferido e o sertanejo');
      break;
    case generosMusicais.rap:
      print('Meu gênero musical preferido e o rap');
      break;
  }

  
}

enum generosMusicais{
  funk,
  rock,
  samba, 
  sertanejo,
  rap,
  trap,
}