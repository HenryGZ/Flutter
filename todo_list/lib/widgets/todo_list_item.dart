import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/task.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.task});

  final Task task; //recebe o título da tare fa passado por parâmetro

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      //o padding é um widget que permite definir um espaçamento para os widgets que estão dentro dele
      child: Container(
        //o container sem altura se auto ajusta ao conteúdo do seu filho
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[300],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //alinhamento dos widgets filhos na horizontal, começando da esquerda para a direita
          children: [
            Text(
              DateFormat('dd/MM/yyyy HH:mm').format(task.dateTime) ?? '',
              //pega a data e hora da tarefa e converte para string para ser exibida na tela do app (?? '' é para evitar erros caso a data seja nula)
              //tambem está usando DateFormat da biblioteca intl para formatar a data, existem outros formatos disponíveis nessa biblioteca
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              task.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
