import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/models/task_data.dart';
import 'package:todolist_flutter_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {

  final List<Task> taskList;
  TaskList({this.taskList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
          return TaskTile(task: taskList[index]);
        },
      itemCount: taskList.length,
    );
  }
}
