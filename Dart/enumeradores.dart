enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  StatusPagamento status = StatusPagamento
      .pago; //recebe apenas os valores já enumerados, evita erros e confusão

  switch (status) {
    case StatusPagamento.pendente:
      //faça algo
      break;

    case StatusPagamento.pago:
      //faça algo
      break;

    case StatusPagamento.reembolsado:
      //faça algo
      break;
  }
  print(status.index);
  print(StatusPagamento.values[1]);
}
