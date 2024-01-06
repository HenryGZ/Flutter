import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      child: Slidable(
        //widget que permite que o item da lista seja deslizável
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          //dismissible: DismissiblePane(onDismissed: () {}), esse comando faz com que o item quando seja deslizado até o final ele seja excluido da lista
          //para fazer o comando de exclusão da lista deve-se criar uma função que exclua o item da lista e passar essa função para o onDismissed
          children: [
            SlidableAction(
              //define os icones que apareceram quando o evento slidable for ativado dentro do childre
              //podem ser quantos icones quiser

              //onPressed: DoNothingAction(),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Deletar',
              onPressed: (BuildContext context) {},
            ),
            SlidableAction(
              //onPressed: onPressed,
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Editar',
              onPressed: (BuildContext context) {},
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              //como são dois icones deve haver duas açoes de fechamento

              flex: 2,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Arquivar',
              onPressed: (BuildContext context) {},
            ),
            SlidableAction(
              flex: 2,
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.share,
              label: 'Compartilhar',
              onPressed: (BuildContext context) {},
            ),
          ],
        ),
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
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
