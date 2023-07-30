void main() {
  //passa uma função commo parametro que pode ser chamada dentro da função, meio redundante pois posso chamar uma função qualquer sem
  //antes ter pasado ela como parametro dentro da função
  //porem eu posso escrever a função dentro da chamada da função

  //saudacoes('Henry', corpo: funcao);

  saudacoes('Henry', corpo: (int i) {
    for (i; i < 10; i++) {
      print(i);
    }
  });
}

void funcao() {
  print('entrou na função');
}

void saudacoes(String nome,
    {bool mostraragora = true,
    String? cliente,
    required Function(int i) corpo}) {
  print('Saudações do ${nome.toUpperCase()}');

  //funcao();
  corpo(5);

  //string c recebe cliente, caso o cliente for null ele recebe não informado
  String c = cliente ?? 'não informado';

  print('Seja bem vindo(a) ${c.toUpperCase()}!');

  if (mostraragora) {
    print('Agora: ${DateTime.now().toString()}');
  }
}
