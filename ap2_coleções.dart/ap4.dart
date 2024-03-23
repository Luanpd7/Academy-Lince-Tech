void main() {
  Map<String, List<String>> cidades = {};
  List<String> listaOrdem = [];

  List<String> receberCidade;

  cidades = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['São Paulo', 'Guarulhos', 'Campinas'],
  };

  final cidadesSc = cidades['SC']!;

//listar em ordem alfabética as cidades de SC
  cidadesSc.sort();
  print(cidadesSc.join(', '));

//listar todas as cidades em ordem alfabética

  final cidadesComSigla = [];

  for (var siglaEstado in cidades.keys) {
    final cidadesDoEstado = cidades[siglaEstado]!;

    for (var cidade in cidadesDoEstado) {
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }

  cidadesComSigla.sort();

  print('-------------------------------------------------------------------');

  for (var item in cidadesComSigla) {
    print(item);
  }
}
