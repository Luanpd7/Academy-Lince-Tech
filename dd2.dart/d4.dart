/* Minha forma de refatoração neste codigo foi pegar quantidade de metodos desnecessarios e refatorar e condições que estava no mais
e criei metodos para englobar, nesta refatorações utilizei os parametros para permitir a comunicação a regra de negocio
os codigos que estao comentados são para comparar oque foi feito */

import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);

  final circuloMaiorArea = comparador.formaComMaiorArea(circuloA, circuloB);
  final retanguloMaiorArea = comparador.formaComMaiorArea(retanguloA, retanguloB);

  /*  if (circuloMaiorArea.area > retanguloMaiorArea.area) {
    print(
      'A maior area e ${circuloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${circuloMaiorArea.nome}',
    );
  } else {
    print(
      'A maior area e ${retanguloMaiorArea.area.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorArea.nome}',
    );
  } */

  final circuloaiorPerimetro = comparador.formaComMaiorArea( circuloA, circuloB,);
  final retanguloMaiorPerimetro = comparador.formaComMaiorArea( retanguloA, retanguloB);

   /*if (circuloaiorPerimetro.area > retanguloMaiorPerimetro.area) {
    print(
      'O maior perímetro e ${circuloaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${circuloaiorPerimetro.nome}',
    );
  } else {
    print(
      'O maior perímetro e ${retanguloMaiorPerimetro.perimetro.toStringAsFixed(2)} '
          'e pertence a ${retanguloMaiorPerimetro.nome}',
    );
  } */
  
      //englobei o bloco de condição que estava no main e apliquei dentro de um método na classe ComparadorFormasGeometricas
  comparador.definindoMaiorArea(circuloMaiorArea , retanguloMaiorArea);
  comparador.definindoMaiorPerimetro(circuloaiorPerimetro, retanguloMaiorPerimetro);

}

/// Representa a forma geometrica "círculo"
class Circulo {
  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(this.nome, this.raio);

  final String nome;
  final double raio;

  /// Retorna a area desse círculo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo {
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(this.nome, this.altura, this.largura);

  final String nome;
  final double largura;
  final double altura;

  /// Retorna a area desse círculo
  double get area => altura * largura;

  /// Retorna o perímetro desse círculo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado {
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse quadrado
  double get area => lado * lado;

  /// Retorna o perímetro desse quadrado
  double get perimetro => lado * 4;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {

   
  
   /* Circulo circuloDeMaiorArea(Circulo circuloA, Circulo circuloB) {
    if (circuloA.area > circuloB.area) {
      return circuloA;
    } else if (circuloB.area > circuloA.area) {
      return circuloB;
    }
    return circuloA;
  }

 
  Circulo circuloDeMaiorPerimetro(Circulo circuloA, Circulo circuloB) {
    if (circuloA.perimetro > circuloB.perimetro) {
      return circuloA;
    } else if (circuloB.perimetro > circuloA.perimetro) {
      return circuloB;
    }
    return circuloA;
  }


  Retangulo retanguloDeMaiorPerimetro(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.perimetro > retanguloB.perimetro) {
      return retanguloA;
    } else if (retanguloB.perimetro > retanguloA.perimetro) {
      return retanguloB;
    }
    return retanguloA;
  }

 
  Retangulo retanguloDeMaiorArea(Retangulo retanguloA, Retangulo retanguloB) {
    if (retanguloA.area > retanguloB.area) {
      return retanguloA;
    } else if (retanguloB.area > retanguloA.area) {
      return retanguloB;
    }
    return retanguloA;
  } */


 
    //Decicidi criar somente um metodo e o tipo de retorno quem decidira é os parametros
 formaComMaiorArea(formaA, formaB){
      if(formaA.area > formaB.area){
        return formaA;
      }else if(formaB.area > formaA.area){
        return formaB;
      }
      return formaA;
  }



    //peguei a condição que estava no main e implementei nestes metodos
  definindoMaiorArea(circulo , retangulo){
    if (circulo.area > retangulo.area) {
    print(
      'A maior area e ${circulo.area.toStringAsFixed(2)} '
          'e pertence a ${circulo.nome}',
    );
  } else {
    print(
      'A maior area e ${retangulo.area.toStringAsFixed(2)} '
          'e pertence a ${retangulo.nome}',
    );
  }

  }

   definindoMaiorPerimetro(circulo , retangulo){
    if (circulo.perimetro > retangulo.perimetro) {
    print(
      'O maior perímetro e ${circulo.perimetro.toStringAsFixed(2)} '
          'e pertence a ${circulo.nome}',
    );
  } else {
    print(
      'O maior Perimetro e ${retangulo.perimetro.toStringAsFixed(2)} '
          'e pertence a ${retangulo.nome}',
    );
  }

  }
 
}