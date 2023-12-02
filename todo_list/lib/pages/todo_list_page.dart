import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todo_list_item.dart';
import 'package:todo_list/models/task.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
  //criação do estado da tela
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController taskController = TextEditingController();

  //criação do controller do textfield
  List<Task> taskList = [];

  //criação da lista de tarefas
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //widget que garante que o conteúdo da tela não fique embaixo da barra de status do celular
      child: Scaffold(
        //widget padrão das telas do flutter
        body: Center(
          //centraliza os widgets na tela
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            //o padding é um widget que permite definir um espaçamento para os widgets que estão dentro dele
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //faz a coluna usar o menor espaço disponivel na tela
              children: [
                Row(
                  children: [
                    Expanded(
                      //o expanded faz com que o widget ocupe o máximo de espaço possível
                      child: TextField(
                        controller: taskController,
                        //atribuição do controller ao textfield
                        //campo de texto
                        //controller: listItem,
                        //atribuição do controller ao textfield
                        decoration: const InputDecoration(
                          labelText: 'Digite um item',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    //o sizedbox é um widget que permite definir um tamanho para o widget que está dentro dele, no caso um espaço em branco para separar dois componentes
                    ElevatedButton(
                      //botão que fica ao lado, na mesma row, do textfield
                      onPressed: () {
                        String text = taskController.text;
                        //pega o texto do textfield

                        setState(() {
                          Task newTask = Task(
                            title: text,
                            dateTime: DateTime.now(),
                          ); //cria uma nova tarefa com o texto do textfield e a data atual

                          taskList.add(newTask); //adiciona o texto na lista
                        }); //atualiza a tela para mostrar o novo item na lista
                        taskController.clear();
                        //limpa o textfield depois de adicionar o item na lista
                      }, //usando o icon

                      //usando o text

                      // child: Text(
                      //   '+',
                      //   style: TextStyle(fontSize: 40),
                      // ),

                      style: ElevatedButton.styleFrom(
                        //definição da cor do botão
                        backgroundColor: Colors.blueAccent,
                        //definição do estilo do botão
                        //shape: CircleBorder(), //deixa o botão redondo
                        //definição da forma do botão
                        padding: const EdgeInsets.all(14),
                        //definição do espaçamento interno do botão
                      ),

                      //há duas formas de colcoar um ícone no botão, a primeira é usando o icon e a segunda é usando o text

                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  //o flexible faz com que o widget ocupe o máximo de espaço possível
                  child: ListView(
                    shrinkWrap: true,
                    //faz com que a lista ocupe apenas o espaço necessário para mostrar os itens
                    children: [
                      for (Task task in taskList)
                        //for que percorre a lista de tarefas e cria um widget para cada item da lista
                        TodoListItem(
                          task: task,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      //esse expanded usa o tamanho total da tela, o que permite que o texto começe na esquerda e o botão na direita alinhados as bordas da tela
                      child: Text(
                          'Voce possui ${taskList.length} tarefas pendentes'),
                      //texto que mostra a quantidade de tarefas pendentes, contando o numero de tarefas na lista
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: const EdgeInsets.all(14),
                        ),
                        child: const Text('Limpar lista'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
