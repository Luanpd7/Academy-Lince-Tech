void main() {

 Agrupar agrupar = Agrupar();

print( agrupar.toString());

}

class Agrupar {
  String nome = 'Luan';
  String sobrenome = 'Pereira';
  int idade = 20;
  //bool maiorIdade = idade >= 18;

  bool ativo = true;

  double peso = 60.00;

  String? nacionalidade;

  @override
  String toString() {
    // TODO: implement toString
    return 'nome = '+nome+ '\n'
             'sobrenome = '+sobrenome+ '\n'
               'idade = '+idade.toString()+ '\n'
                 'situação = '+ativo.toString()+ '\n'
                    'peso = '+peso.toString()+ '\n'
                      'nacionalidade = ${ nacionalidade != null ? nacionalidade : 'Não tem nacionalidade'}';

                
     
  }

 
}
