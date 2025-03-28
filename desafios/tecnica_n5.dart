void main() {
  String animal = 'PAPAGAIO';

  String stringInvertida = inverterString(animal);

  print('A Inversão da Palavra $animal é: $stringInvertida');
}

String inverterString(String txt) {
  String resultado = '';

  for (int i = txt.length - 1; i >= 0; i--) {
    resultado += txt[i];
  }

  return resultado;
}
