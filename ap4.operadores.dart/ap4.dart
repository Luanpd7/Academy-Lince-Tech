
/* O produto custava 10 reais, foi vendido por 7 reais. O desconto dado foi 30% */
 
void main() {
 double valorTotal = 10;
 double valorDesconto = 7;
 
 int? resposta =  porcento(valorTotal );

 print('${resposta != null? 'Desconto = $resposta %' : 'Não tem desconto = $valorTotal RS' }   ');


 
}
              
            // O usuario podera passar o valor nulo caso vendido ao mesmo preço
int? porcento(double valorTotal,[double? ValorDesconto]){

  if(ValorDesconto == null){
    return null;
  }
   double divisao = ValorDesconto / valorTotal;

   var multiplica = divisao * 100;

   int subtracao = 100 - multiplica.toInt();
  
   return subtracao;
  
   
}
     
 