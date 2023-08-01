void main() {
  cachorro cao = cachorro();
  cao.nome = 'Dog';
  cao.idade = 2;

  gato cat = gato();
  cat.nome = 'Cat';
  cat.idade = 1;

  List<animal> animais = [];
  animais.add(cao);
  animais.add(cat);

  animal animal1 = animais.first;
  if (animal1 is cachorro) {
    animal1.latir();
  } else if (animal1 is gato) {
    animal1.miar();
  }
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
