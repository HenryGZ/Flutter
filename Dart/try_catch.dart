void main() {
  try {
    int resultado = 100 ~/ 0;
  } on UnsupportedError {
    print(
        'ocorreu unsuported error no código'); // o on serve para tratar um erro específico que ocorreu dentro do código
  } catch (e) {
    print(e);
  }
}
