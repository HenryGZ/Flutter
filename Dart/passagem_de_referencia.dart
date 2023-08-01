void main() {
  pessoa p1 = pessoa(nome: 'João', idade: 30);
  print(p1.nome);
  print(p1.idade);

  pessoa p2 =
      p1; //copiam a refenrencia do local da memoria dos dados que a p1 armazena
  //muito igual ponteiro de c++

  print(p2.nome);
  print(p2.idade);
}

class pessoa {
  String nome;
  int idade;

  pessoa({required this.nome, required this.idade});
}
