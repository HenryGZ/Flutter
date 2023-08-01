//existe apenas um para aquela classe, não importa o objeto, mas sim a classe
//ele é unico para a classe

void main() {
  pessoa.atributoEstatico = 'teste de atributo estatico alterado';
}

class pessoa {
  String? nome;
  int? idade;

  //construtor
  pessoa({required this.nome, required this.idade});

  void comer() {
    print('$nome está comendo');
  }

  static String atributoEstatico = 'teste de atributo estatico';
}
