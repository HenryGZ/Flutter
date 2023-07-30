void main() {
  //declaração de variáveis estáticas
  //const - compilação
  const nome = 'Henry';
  const idade = 21;
  const lista = ['Henry', 'Goes', 'Zanin'];
  /* a vantagem desse tipo de declaração é na compilação
  o programa faz a leitura dessas variaveis estáticas e troca em todo o código onde
  elas são chamas pelos respectivos valores atribuidos
  melhorando a performance de execução do programa*/

  //final - execução
  final DateTime data = DateTime.now();
  /* recebe a data no momento da execução
  após a execução esse valor não pode ser mais trocado 

  tambem posso declarar esse valor apenas uma vez durante a execução:*/

  final String gerente;

  if (nome == 'Henry') {
    gerente = nome;
  } else {
    gerente = 'nao é o gerente';
  }
  //valores atribuidos apenas uma vez em tempo de execução
}
