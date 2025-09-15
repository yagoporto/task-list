import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:tasklist/models/task.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // ignore: sort_child_properties_last
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[200],
        ),
        margin:  EdgeInsets.all(4.0),
        child: Padding(padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              DateFormat('dd/MM/yyyy - HH:mm').format(task.date), 
              style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 63, 26, 112),
              ),
            ),
            Text(task.title, 
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
            ]
          )
        ),
      ),
      endActionPane: 
      ActionPane(
        motion: DrawerMotion(),
        extentRatio: 0.10,
        children: [
          SlidableAction(
          onPressed: (context) {},
          backgroundColor: Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
      )
      
        ]),
    );
  }
}