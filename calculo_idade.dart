import 'dart:io';

main(List<String> args) {
  print('======== Digite uma Idade =======');
  var idade = int.parse(stdin.readLineSync());

  if (idade >= 50) {
    print('Melhor Idade');
  } else if (idade >= 18) {
    print('Adulto');
  } else if (idade >= 12) {
    print('Adolescente');
  } else {
    print('Criança');
  }
}
