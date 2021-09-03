import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasksList;

  const TasksList({required this.tasksList});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasksList[index].name,
          isChecked: widget.tasksList[index].isDone,
          toggleCheckboxState: (newState) {
            setState(() {
              widget.tasksList[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasksList.length,
    );

    // return ListView(
    //   children: [
    //     TaskTile(
    //         taskTitle: taskList[0].name,
    //         isChecked: taskList[0].isDone,
    //         toggleCheckboxState: (checkboxState) {
    //           setState(() {
    //             taskList[0].toggleDone();
    //           });
    //         }),
    //   ],
    // );
  }
}
