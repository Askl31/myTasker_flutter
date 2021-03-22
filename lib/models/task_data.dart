import 'package:flutter/foundation.dart';
import 'package:tasker/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Acheter du pain', category: 'Courses'),
    Task(name: 'Acheter du test', category: 'Courses'),
    Task(name: 'Acheter du dfgfdg', category: 'Courses'),
    Task(name: 'Acheter du jjjj', category: 'Courses'),
    Task(name: 'Acheter du dgfdg', category: 'Courses'),
  ];

  void updateCheck(Task task) {
    task.toogleCheck();
    notifyListeners();
  }

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
