void main() {
  pessoa p1 = pessoa(nome: 'João', idade: 30);
  print(p1.nome);
  print(p1.idade);

  pessoa? p2 = pessoa(nome: 'Maria', idade: 20);
  print(p2
      ?.nome); //se p2 for diferente de null ele fará a leitura senao ele retorna null
  print(p2?.idade);
}

class pessoa {
  String nome;
  int idade;

  pessoa({required this.nome, required this.idade});
}
