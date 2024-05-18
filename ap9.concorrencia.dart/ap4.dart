
Future<void> main() async {

    List<String> nomes = ['Luan', 'Messi', 'Neymar', 'João', 'Guilherme']; 

                           //Passando a lista nomes e um nome para procurar na lista
    buscarDados(nomes, 'Luan'); 
        
}

Future buscarDados(List<String> nomes, String nome) async {
  print('Buscando nome... \n($nome...)');

  await Future.delayed(Duration( seconds: 3)); //Nesta linha o código vai aguarda 2 segundos para finalizar o bloco

  try{           //Utilizei trycatch para tratar caso houver erro
    nomes.contains(nome)   
      ? print('Encontrado $nome')
      : throw Exception();       //Utilizei uma condição se o nome foi encontrado ou não
         //Se retorna a Exception irei tratar no catch
  }catch(_){ 
      print('Nome não encontrado');
        //independente se houver uma exceção ou não, no final irei mostrar uma mensagem fechadno o processo
  }finally{
      print('Fim do processo...');
  }

}
