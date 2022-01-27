import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
            onLongPress: () {
              context.read<TaskData>().deleteTask(index);
            },
            child: TaskTile(index));
      },
      itemCount: context.watch<TaskData>().tasksList.length,
    );
  }
}
