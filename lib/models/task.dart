class Task {
  String taskTitle;
  bool isChecked;

  Task({this.isChecked = false, required this.taskTitle});

  void toggleCheckbox() {
    isChecked = !isChecked;
  }
}
