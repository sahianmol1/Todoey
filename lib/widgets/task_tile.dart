import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatefulWidget {
  final int index;
  TaskTile(this.index);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListTile(
          title: Text(
            taskData.tasksList[widget.index].taskTitle,
            style: TextStyle(
              decoration: taskData.tasksList[widget.index].isChecked
                  ? TextDecoration.lineThrough
                  : null,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: taskData.tasksList[widget.index].isChecked,
            onChanged: (newValue) {
              setState(() {
                taskData.tasksList[widget.index].toggleCheckbox();
              });
            },
          ),
        );
      },
    );
  }
}
