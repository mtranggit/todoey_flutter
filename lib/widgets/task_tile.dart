import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckboxState;
  final VoidCallback? longPressCallBack;

  TaskTile(
      {required this.taskTitle,
      this.isChecked = false,
      this.longPressCallBack,
      required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
