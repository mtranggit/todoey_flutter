import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile('Buy milk'),
        TaskTile('Buy eggs'),
        TaskTile('Go to the gym'),
      ],
    );
  }
}
