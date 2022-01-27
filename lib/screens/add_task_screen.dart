import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTask extends StatelessWidget {
  String newTask = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
                TextField(
                  cursorHeight: 25.0,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.lightBlueAccent,
                  autofocus: true,
                  onChanged: (newValue) {
                    newTask = newValue;
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<TaskData>().addNewTask(Task(taskTitle: newTask));
              // Provider.of<TaskData>(context)
              //     .addNewTask(Task(taskTitle: newTask));
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0),
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
