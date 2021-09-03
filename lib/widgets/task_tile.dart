import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;

  const TaskTile(this.taskName);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName),
      trailing: Checkbox(
        value: false,
        onChanged: (newValue) {},
      ),
    );
  }
}
