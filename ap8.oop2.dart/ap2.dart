

void main(){

  Aranha aranha = Aranha();
  aranha.beber();
  aranha.comer();
  aranha.subindo();
}

abstract class Animal{
  comer(){
    print('O animal está comendo');
  }

  beber(){
    print('O animal está bebendo');
  }


}

class Aranha extends Animal{
   subindo(){
    print('Aranha está subindo a parede');
   }
}