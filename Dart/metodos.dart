class Pessoa {
  String? nome;
  int? idade;

  void aniverssario() {
    //isso é um método, assim como no c# ele é uma função dentro de uma classe
    print('Parabens $nome');
    if (idade != null) {
      idade = idade! + 1;
    }
  }
}

void main() {
  var pessoa = Pessoa();
  pessoa.nome = 'Henry';
  pessoa.idade = 21;
  print(pessoa.nome);
  print(pessoa.idade);
  pessoa.aniverssario();
  print(pessoa.idade);
}
