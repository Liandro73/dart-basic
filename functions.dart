import 'dart:io';

main() {
  calculoImc();
}

calculoImc() {
  print('======= Digite seu Peso =======');
  double peso = double.parse(stdin.readLineSync());

  print('======= Digite sua Altura =======');
  double altura = double.parse(stdin.readLineSync());

  double imc = calcImcExpr(peso, altura);
  imprimirResultado(imc);
}

double calcImcExpr(double peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(imc) {
  print('SEU IMC: ${imc}, CLASSIFICADO COMO:');

  if (imc >= 40.0) {
    print('OBESIDADE GRAVE');
  } else if (imc >= 30.0 && imc <= 39.9) {
    print('OBESIDADE');
  } else if (imc >= 25.0 && imc <= 29.9) {
    print('SOBREPESO');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('NORMAL');
  } else {
    print('MAGREZA');
  }
}
