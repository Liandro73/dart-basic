import 'dart:io';

List<String> produtos = [];

main() {
  bool condicao = true;

  while (condicao) {
    print('=== ADICIONE UM PRODUTO ===');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('=== TERMINOU O PROGRAMA ===');
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
      imprimir();
    } else {
      produtos.add(text);
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print('ITEM $i - ${produtos[i]}');
  }
}

remover() {
  print('=== QUAL ITEM DESEJA REMOVER? ===');
  imprimir();
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('=== ITEM REMOVIDO ===');
}
