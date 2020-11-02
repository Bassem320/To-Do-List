import 'package:flutter/cupertino.dart';
import 'package:todolist_flutter_app/models/task_data.dart';

class TaskListData extends ChangeNotifier{
  List<Task> taskList = [];
  TaskListData();

  void addNewTask(Task task){
    taskList.add(task);
    notifyListeners();
  }

  void deleteTask(Task task){
    taskList.remove(task);
    notifyListeners();
  }
}