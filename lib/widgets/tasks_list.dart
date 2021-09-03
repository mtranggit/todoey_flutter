import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final List<Task> taskList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
            taskTitle: taskList[0].name,
            isChecked: taskList[0].isDone,
            toggleCheckboxState: (checkboxState) {
              setState(() {
                taskList[0].toggleDone();
              });
            }),
      ],
    );
  }
}
