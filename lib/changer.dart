import 'tasks.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class Data extends ChangeNotifier{
  List<Tasks> tasks = [];

  void addTasks(String newValue){
    tasks.add(Tasks(newValue));
    notifyListeners();
  }

  void deleteTasks(Tasks task){
    tasks.remove(task);
    notifyListeners();
  }

  void change(Tasks task){
    task.toggleDone();
    notifyListeners();
  }
}
