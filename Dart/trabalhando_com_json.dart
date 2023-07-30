import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());
  print(dados['nome']);
  print(dados['endereco']['cidade']);
  print(dados['cursos']);
  print(dados['cursos'][0]);
}

String dadosDoUsuario() {
  return """ 
  {
    "nome": "Henry",
    "sobrenome": "Goes Zanin",
    "idade": 21,
    "casado": false,
    "altura": 1.75,
    "cursos": [
      {
        "nome": "Dart",
        "dificuldade": "1"
      },
      {
        "nome": "Flutter",
        "dificuldade": 1
      }
    ],
    "endereco": {
      "cidade": "Campinas",
      "pais": "Brasil",
      "numero": 100
    }
  }
  """;
}
