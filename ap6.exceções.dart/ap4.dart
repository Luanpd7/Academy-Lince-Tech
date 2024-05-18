/* No entanto, inclua um bloco try-catch dentro do método para tratar possíveis erros ao abrir o arquivo.
Em caso de erro, lance novamente: Erro ao abrir o arquivo $nome
No programa principal, chame o programa passando um nome arbitrário para o arquivo.
Utilize um bloco try-catch para tratar possíveis erros durante a leitura do nome do arquivo.
Se ocorrer um erro, exiba a mensagem: Entrada invalida. Digite um nome valido.
Caso contrario, crie um objeto da classe ArquivoTexto com o nome informado e chame o método abrir.
No bloco catch do programa principal, utilize o rethrow para relançar a exceção lancada pelo método abrir.
Por fim, exiba a mensagem Fim do programa ao final do programa.*/

void main(){
  try{
  ArquivoTexto arquivo = ArquivoTexto('Arquivo PDF');
  arquivo.abrir();
  }catch(e){
     print('Entrada invalida. Digite um nome valido.');
     rethrow;
  } finally{
    print('Fim do programa');
  }
  
}

abstract class Arquivo{
  abrir();
}

class ArquivoTexto implements Arquivo{
  String? _nome;

  ArquivoTexto(this._nome);

  @override
  abrir() {
    try{
      print('Abriu');
    }on Exception catch(e){
      throw ' Erro ao abrir o arquivo $_nome';
    }
     
  }

}