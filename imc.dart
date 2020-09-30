import 'dart:io';

main() {
  var peso;
  var altura;

  print('======= Digite seu Peso =======');
  peso = double.parse(stdin.readLineSync());

  print('======= Digite sua Altura =======');
  altura = double.parse(stdin.readLineSync());

  var calcImc = peso / (altura * altura);

  print('SEU IMC: ${calcImc}, CLASSIFICADO COMO:');

  if (calcImc >= 40.0) {
    print('OBESIDADE GRAVE');
  } else if (calcImc >= 30.0 && calcImc <= 39.9) {
    print('OBESIDADE');
  } else if (calcImc >= 25.0 && calcImc <= 29.9) {
    print('SOBREPESO');
  } else if (calcImc >= 18.5 && calcImc <= 24.9) {
    print('NORMAL');
  } else {
    print('MAGREZA');
  }
}
