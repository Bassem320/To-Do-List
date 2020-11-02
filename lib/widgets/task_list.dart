import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_flutter_app/models/task_list_data.dart';
import 'package:todolist_flutter_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListData>(
      builder: (context,taskListData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            return TaskTile(task: taskListData.taskList[index]);
          },
          itemCount: taskListData.taskList.length,
        );

      },
    );
  }
}
