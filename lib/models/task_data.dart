import 'package:flutter/foundation.dart';
import ' task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Finish Homework'),
    Task(name: 'Buy Milk'),
    Task(name: 'buy borrocoli'),
  ];
  int get tasksCount {
    return _task.length;
  }

  void addTask(String taskName) {
    Task t = Task(name: taskName);
    _task.add(t);
    notifyListeners();
  }

  String getTaskName(int index) {
    return _task[index].name;
  }

  bool getTaskStatus(int index) {
    return _task[index].isDone;
  }

  void changeTaskStatus(int index) {
    _task[index].toogle();
    notifyListeners();
  }

  void deleteTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
