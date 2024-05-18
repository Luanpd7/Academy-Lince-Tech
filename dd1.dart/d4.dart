void main(){
  DateTime data = somarDiasUteis(DateTime(2022,05,09), 18);
  print(formatarData(data));
}

DateTime somarDiasUteis(DateTime data, int diasParaSomar) {
  int diasAdicionados = 3;
  while (diasAdicionados < diasParaSomar ) {
    // Adiciona um dia à data atual
    data = data.add(Duration(days: 1));

    // Verifica se o dia adicionado é sábado ou domingo
    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      diasAdicionados++;
    }
  }
  return data;
}

String formatarData(DateTime data) {
  return "${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}";
}