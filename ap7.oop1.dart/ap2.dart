
void main(){
 Retangulo retangulo = Retangulo(1.20, 5.20);
 double areaDoRetangulo = retangulo.calcularArea();
 print('Area do retângulo: $areaDoRetangulo');
}

class Retangulo{
  final double largura;
  final double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea(){
   double areaRetangulo  = largura * altura;
   return  areaRetangulo;
  }
} 