void main() {
  pessoa pessoa1 = pessoa(nome: 'João', idade: 30);
  pessoa pessoa2 = pessoa.casada(nome: 'Maria', idade: 25);
  pessoa pessoa3 = pessoa.solteira(nome: 'Pedro', idade: 40);

  pessoa1.dinheiro = 100;
  pessoa2.dinheiro = 200;
  pessoa3.dinheiro = 300;
}

class pessoa {
  String? nome;
  int idade;
  bool casado = false;
  double? _dinheiro; //declaração de variavel privada

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

  int aniverssario() {
    print('Parabens $nome');
    if (idade != null) {
      idade = idade + 1;
    }
    return idade;
  }

  //set permite a alteração de um valor private
  set dinheiro(double? valor) {
    print('alterando dinheiro da $nome');
    _dinheiro = valor;
  }

  //o tipo do retorno do get deve saer o mesmo do set
  //get permite a leitura de um valor private
  double? get dinheiro {
    print('lendo dinheiro da $nome');
    return _dinheiro;
  }
}
