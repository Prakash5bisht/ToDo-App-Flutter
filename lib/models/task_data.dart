import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:to_do/models/Task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
//    Task(name: 'milk'),
//    Task(name: 'eggs'),
//    Task(name: 'vinegar'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
}
  int get taskCount {
    return _tasks.length;
  }

  void updateTasks(Task task){
    task.done();
    notifyListeners();
  }

 void addTask(String newTask){
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}