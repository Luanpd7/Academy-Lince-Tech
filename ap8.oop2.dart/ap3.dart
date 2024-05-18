/*Crie duas classes abstratas a seu critério (as classes devem ser relacionadas a um mesmo contexto)
Em cada classe criada, defina um método abstrato de sua preferência
Cria uma class concreta que implemente os comportamentos definidos pelas classes criadas no item 1
Instancie a sua classe concreta e chame os métodos que você implementou*/

void main(){
  final usuario = Usuario();

  usuario.funcaoMouse();
  usuario.funcaoTeclado();
}


abstract class Mouse{
   funcaoMouse();
  

}

abstract class Teclado{
   funcaoTeclado();

}

class Usuario implements Mouse, Teclado{
  @override
  funcaoMouse() {
     print('O mouse está movimentando');
  }

  @override
  funcaoTeclado() {
     print('O teclado está sendo digitado');
  }

  

}