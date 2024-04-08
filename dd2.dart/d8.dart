
import 'dart:math' as math;
import 'dart:math';

import '../ap8.oop2.dart/ap4.dart';

void main() {
  List<Figurinha> figurinhas = [];
  List<List<Figurinha>> pacotesDe4 = [];
  final random = Random();
  int contador = 4;
  int indice = 1;

  // Instancia as 20 figurinhas
  for (int i = 1; i <= 20; i++) {
    final figurinha = Figurinha('Figura ${random.nextInt(30 + 1)}', i);
    figurinhas.add(figurinha);
  }

  // Divide as figurinhas em pacotes de 4
  for (int i = 0; i < figurinhas.length; i += 4) {
    List<Figurinha> pacote = [];
    for (int j = i; j < i + 4 && j < figurinhas.length; j++) {
      pacote.add(figurinhas[j]);
    }

    pacotesDe4.add(pacote);
    final album = AlbumFigurinha(pacotesDe4);
    album.separarRepetidads();
  }

  // Imprime os pacotes de 4 figurinhas
  for (int i = 0; i < pacotesDe4.length; i++) {
    print('Pacote ${i + 1}:');
    for (var figurinha in pacotesDe4[i]) {
      print('${figurinha.getNome} - ${figurinha.getCodigo}');
    }
    print('---');
  }
}

class Figurinha {
  late String _nome;
  late int _codigo;

  Figurinha(this._nome, this._codigo);

  get getNome => this._nome;
  get getCodigo => this._codigo;

  set setNome(String nome) => _nome = nome;
  set setCodigo(int codigo) => _codigo = codigo;
}

class PacoteFigurinha {
  List<Figurinha> pacote = [];

  PacoteFigurinha(this.pacote);
}

class AlbumFigurinha {
  List<List<Figurinha>> pacoteFigurinha = [];
  List<List<Figurinha>> repetida = [];

  AlbumFigurinha(this.pacoteFigurinha);

  separarRepetidads() {
    for (int i = pacoteFigurinha.length - 1; i >= 0; i--) {
      bool duplicado = false;
      for (int j = i - 1; j >= 0; j--) {
        if (pacoteFigurinha[i] == pacoteFigurinha[j]) {
          pacoteFigurinha.remove(pacoteFigurinha[j]);

          duplicado = true;
          break;
        }
      }
      if (duplicado) {
        repetida.add(pacoteFigurinha[i]);
      }
    }

    for (int i = 0; i < repetida.length; i++) {
      print('Repetidas ${repetida[i]}');
    }
  }
}
