void main() {
  String nome = 'Luan';

  String sobrenome = 'Pereira';

  int idade = 20;
  bool maiorIdade = idade >= 18;

  bool ativo = true;

  double peso = 60.00;

  String? nacionalidade; 

  print("Nome Completo: $nome $sobrenome");

  print("Idade : $idade maior de idade: $maiorIdade");

  String ativoOuInativo = ativo == true ? 'ativo' : 'inativo';
  print("Situação: $ativoOuInativo");

  print('peso: $peso');

  String mensagem = nacionalidade != null ? nacionalidade : 'não informado';

  print(mensagem);
  
}