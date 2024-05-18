import 'dart:math';

void main() {
  // Criando uma instância da ListaDeCompras
  final listaDeCompras = ListaDeCompras();

  // Adicionando alguns itens à lista de compras
  listaDeCompras.incluirItem('Maçã', 5);
  listaDeCompras.incluirItem('Leite', 2);
  listaDeCompras.incluirItem('Pão', 3);

  // Marcando alguns itens como comprados
  listaDeCompras.marcarItemComprado('Maçã');
  listaDeCompras.marcarItemComprado('Leite');

  // Marcando um item como sem estoque
  listaDeCompras.marcarItemSemEstoque('Pão');

  // Exibindo os itens desejados na lista de compras
  listaDeCompras.exibirItensDesejados();

  // Escolhendo um item pendente aleatoriamente
  print('Item pendente escolhido: ${listaDeCompras.escolherItemPendente()}');

  // Mostrando o progresso das compras
  listaDeCompras.mostrarProgresso();
}

// Classe para representar uma lista de compras
class ListaDeCompras {
  // Lista de itens desejados
  List<Item> itensDesejados = [];
  // Lista de itens comprados
  List<Item> itensComprados = [];
  // Lista de itens sem estoque
  List<Item> itensSemEstoque = [];

  // Método para incluir um novo item na lista de compras
  void incluirItem(String nomeItem, int quantidade) {
    itensDesejados.add(Item(nomeItem, quantidade));
  }

  // Método para marcar um item como comprado
  void marcarItemComprado(String nomeItem) {
    // Procura o item na lista de itens desejados
    final index = _buscarItem(nomeItem, itensDesejados);
    // Se encontrar, move o item para a lista de itens comprados
    if (index != -1) {
      itensComprados.add(itensDesejados[index]);
      itensDesejados.removeAt(index);
    }
  }

  // Método para marcar um item como sem estoque
  void marcarItemSemEstoque(String nomeItem) {
    // Procura o item na lista de itens desejados
    final index = _buscarItem(nomeItem, itensDesejados);
    // Se encontrar, move o item para a lista de itens sem estoque
    if (index != -1) {
      itensSemEstoque.add(itensDesejados[index]);
      itensDesejados.removeAt(index);
    }
  }

  // Método para exibir os itens desejados na lista de compras
  void exibirItensDesejados() {
    print('Itens desejados:');
    itensDesejados.forEach((item) {
      print('${item.nome} - Quantidade: ${item.quantidade}');
    });
  }

  // Método para escolher um item pendente aleatoriamente
  String escolherItemPendente() {
    // Copia os itens desejados para uma lista temporária
    final pendentes = [...itensDesejados];
    // Se não houver itens pendentes, retorna uma mensagem
    if (pendentes.isEmpty) return 'Nenhum item pendente';
    // Escolhe aleatoriamente um índice na lista de itens pendentes
    final index = Random().nextInt(pendentes.length);
    // Retorna o nome do item no índice escolhido
    return pendentes[index].nome;
  }

  // Método para mostrar o progresso das compras
  void mostrarProgresso() {
    // Calcula o total de itens na lista de compras
    final totalItens = itensDesejados.length +
        itensComprados.length +
        itensSemEstoque.length;
    // Exibe o progresso das compras
    print('Progresso: ${itensComprados.length}/$totalItens');
  }

  // Método auxiliar para buscar um item em uma lista de itens
  int _buscarItem(String nomeItem, List<Item> lista) {
    // Percorre a lista de itens
    for (int i = 0; i < lista.length; i++) {
      // Se encontrar o item, retorna o índice
      if (lista[i].nome == nomeItem) {
        return i;
      }
    }
    // Se não encontrar o item, retorna -1
    return -1;
  }
}

// Classe para representar um item na lista de compras
class Item {
  // Nome do item
  final String nome;
  // Quantidade do item
  final int quantidade;

  // Construtor da classe Item
  Item(this.nome, this.quantidade);
}