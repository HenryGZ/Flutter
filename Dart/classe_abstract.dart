void main() {
  cachorro cao = cachorro();
  cao.nome = 'Dog';
  cao.idade = 2;

  gato cat = gato();
  cat.nome = 'Cat';
  cat.idade = 1;

  cao.dormir();
  cao.morrer();
  cat.dormir();
  cat.morrer();
}

//com a classe declarada como abstract não posso mais criar um objeto usando ela
//algum objeto tem que herda-la com cachorro e gato
//para poder usar os métodos contidos nela
abstract class animal {
  String? nome;
  int? idade;

  void comer() {
    print('O animal está comendo!');
  }

  void dormir() {
    print('O animal está dormindo!');
  }

  void
      morrer(); //ao fazer isso cada classe que herda animal deverá te rum código dentro
  //da função morrwer especifica por classe, por meio de sobrescrita de um método
  //isso é possivel pela classe abstract
}

class cachorro extends animal {
  void latir() {
    print('O cachorro está latindo!');
  }

  void morrer() {
    print('cachorro morreu');
  }
}

class gato extends animal {
  void miar() {
    print('O gato está miando!');
  }

  void morrer() {
    print('gato morreu');
  }
}
