import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/pages/lista_de_tarefas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListPage(),
    );
  }
}
