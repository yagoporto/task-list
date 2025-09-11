import 'package:flutter/material.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
          
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adicionar Tarefa',
                    hintText: 'Estudar flutter',
                  ),
                ),
              ),
              SizedBox(width: 8,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  
                ),
                child: Text('+',
                  style: 
                  TextStyle(fontSize: 35),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}