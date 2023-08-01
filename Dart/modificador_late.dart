void main{
  pessoa pessoa1 = pessoa(nome: 'João', idade: 30);

  pessoa1.cpf = '123456789-00';
  print(pessoa1.cpf);

}

class pessoa {
  pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  late String cpf; 
  
  //valor declarado como late não precisa receber um valor
  //porem quando for usa-lo é nessecessário que ele tenha algum valor
  //caso contrario ele ira gerar um erro

}
