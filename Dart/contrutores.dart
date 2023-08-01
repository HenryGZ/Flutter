void main() {
  pessoa pessoa1 = pessoa(nome: 'João', idade: 30);
  pessoa pessoa2 = pessoa.casada(nome: 'Maria', idade: 25);
  pessoa pessoa3 = pessoa.solteira(nome: 'Pedro', idade: 40);
}

class pessoa {
  String? nome;
  int? idade;
  bool casado = false;

  //construtor
  pessoa({required this.nome, required this.idade}) {
    print('criando o $nome com idade $idade');
  }

  //construtor nomeado
  //posso colocar uma variavel como default no construtor
  pessoa.casada({required this.nome, required this.idade, this.casado = true});
  //ou usar o escopo do construtor para alteral algo ou realizar uma ação
  pessoa.solteira({required this.nome, required this.idade}) {
    casado = false;
  }

  void aniverssario() {
    print('Parabens $nome');
    if (idade != null) {
      idade = idade! + 1;
    }
  }
}
