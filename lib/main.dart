import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyTaskList>(
      create: (context) {
        return MyTaskList();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class MyTaskList extends ChangeNotifier {
  List<Task> tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
  ];

  void addTask(Task task) {
    tasksList.add(task);
  }
}
