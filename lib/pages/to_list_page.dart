import 'package:flutter/material.dart';
import 'package:tasklist/models/task.dart';
import 'package:tasklist/pages/to_list_page.dart';
import 'package:tasklist/widgets/task_list_item.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {

  final TextEditingController taskController = TextEditingController();
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicionar Tarefa',
                        hintText: 'Estudar flutter',
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  ElevatedButton(
                    onPressed: () {
                      String text = taskController.text;
                      setState(() {
                      Task newTask = Task(
                        title: text, 
                        date: DateTime.now());
                      tasks.add(newTask);
                      });
                      taskController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      
                    ),
                    child: Text('+',
                      style: 
                      TextStyle(fontSize: 35),
                      ),
                    )
                ],
              ),
              SizedBox(height: 16,),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for(Task task in tasks)
                      TaskListItem(
                        task:task
                        ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Você possui ${tasks.length} tarefas pendentes '
                    ),
                  ),
                    SizedBox(width: 8,),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            tasks.clear();
                          });
                        },
                        child: Text('Limpar tudo'),
                        )
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}