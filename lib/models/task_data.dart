import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData with ChangeNotifier {
  final List<Task> _tasksList = [
    Task(taskTitle: 'Buy milk'),
    Task(taskTitle: 'Buy eggs'),
    Task(taskTitle: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasksList => UnmodifiableListView(_tasksList);

  void addNewTask(Task newTask) {
    _tasksList.add(newTask);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasksList.removeAt(index);
    notifyListeners();
  }
}
