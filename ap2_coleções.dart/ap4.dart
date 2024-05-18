void main() {
 final  Map<String,List< String>>   cidades = {
  'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
  'PR': ['Curitiba', 'Cascavel', 'Foz do Iguaçu'],
  'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
  'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda']
  };

  //Todas as siglas
 final siglaEstado = cidades.keys;
 print(siglaEstado);


// Cidades só de SC
List<String>? cidadesSc = cidades['SC'];
cidadesSc!.sort();
print('cidades SC = $cidadesSc');


List<String> cidadesDoEstado = [];

// Todas cidades em formato de cidades - sigla
for(String siglaEstados in cidades.keys){
 
   
   for(String cidade in cidades[siglaEstados]!){
         cidadesDoEstado.add('$cidade - $siglaEstados \n');
   }
}

cidadesDoEstado.sort();
print(cidadesDoEstado);

}
