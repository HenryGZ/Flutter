void main() {
  cachorro cao = cachorro();
  cao.nome = 'Dog';
}

class animal {
  String? nome;
  int? idade;

  void comer() {
    print('O animal está comendo!');
  }

  void dormir() {
    print('O animal está dormindo!');
  }
}

class cachorro extends animal {
  void latir() {
    print('O cachorro está latindo!');
  }
}

class gato extends animal {
  void miar() {
    print('O gato está miando!');
  }
}
