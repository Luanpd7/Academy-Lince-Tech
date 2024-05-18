
void main() {
  final produtos = <Produto>[];
  List<String> nomes = ['Luan', 'Sandi', 'Junior', 'Bento', 'Nicolas'];
  List<double> preco = [30, 50, 45, 15, 50];
  // List<double> produtoComDesconto = [];

  for (int i = 0; i < nomes.length; i++) {
    final produto = new Produto();
    produto
      ..nome = nomes[i]
      ..preco = preco[i];

    produtos.add(produto);

    final novoPreco = produto.desconto(10);

    print(
      "Novo preço do produto ${produtos[i].nome} (com desconto): $novoPreco\n",
    );
  }
}

class Produto {
  String nome = '';
  double preco = 0.0;

  double desconto(int valorPercentual) {
    return preco - (preco * (valorPercentual / 100));
  }
}
