void main() {}

abstract class repositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
}

class repositorioPessoasRemote implements repositorioPessoas {
//pressionando ctrl + . o visul já cria todas os métoros que estão faltando de forma padronizada

  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    // TODO: implement ler
    throw UnimplementedError();
  }
}

class repositorioPessoasLocal implements repositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    // TODO: implement ler
    throw UnimplementedError();
  }
}
