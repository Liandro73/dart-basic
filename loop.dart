import 'dart:io';

main() {
  var nome = [];

  bool condicao = true;

  while (condicao) {
    print('=== Escreva um Texto ===');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      condicao = false;
      print('=== PROGRAMA FINALIZADO ===');
    } else {
      nome.add(text);
    }

    print(nome);
    print('\n');
  }
}
