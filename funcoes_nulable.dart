void main() {
  //print(funcao());
  //posso declarar um valor padrão quando o retorno for nulo

  print(funcao() ?? 'não informado');

  // depois do ponto de interrogação recebe os valores default
}

String? funcao() {
  return 'nome';

  //ou essa função pode retornar um valor nulo tambem quando
  //declarada assim com o ponto de interrogação na frente

  //return null;
}
