import 'package:flutter/material.dart';

class ToDoListPage extends StatelessWidget {
  ToDoListPage({super.key});

  final TextEditingController emailController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email: ",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(
                ),
              ),
              ElevatedButton(onPressed: login,
                child: Text('Entrar'))
            ],
          )
        ),
      )
    );
  }

  void login(){
    String text = emailController.text;
    print(text);
  }
}