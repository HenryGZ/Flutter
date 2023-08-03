void main() {
  cachorro cao = cachorro();
  cao.nome = 'Dog';
  cao.idade = 2;

  gato cat = gato();
  cat.nome = 'Cat';
  cat.idade = 1;

  print(cao);
  cao.dormir(); //é permitido pois o to string foi reescrito
  print(cat);
  cat.dormir();
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

//reescrita do método tostring()
  @override
  String toString() {
    return 'Nome: $nome idade: $idade';
  }
}

class cachorro extends animal {
  void latir() {
    print('O cachorro está latindo!');
  }

  //reescrita de um metodo:
  void dormir() {
    print('reescreveu o dormir');
  }
}

class gato extends animal {
  void miar() {
    print('O gato está miando!');
  }
}
