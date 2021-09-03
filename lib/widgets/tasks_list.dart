import 'package:flutter/material.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  const TasksList();

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    var tasksList = context.read<MyTaskList>().tasksList;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasksList[index].name,
          isChecked: tasksList[index].isDone,
          toggleCheckboxState: (newState) {
            setState(() {
              tasksList[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasksList.length,
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
