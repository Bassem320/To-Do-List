import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_flutter_app/models/task_data.dart';
import 'package:todolist_flutter_app/models/task_list_data.dart';

class TaskTile extends StatefulWidget {
  final Task task;
  TaskTile({this.task});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.task.name,
      style: TextStyle(
        decoration: widget.task.isDone ? TextDecoration.lineThrough : null
      ),),
      trailing: DoneCheckbox(
        isChecked: widget.task.isDone,
        checkboxCallback: (checkboxNewValue){
          setState(() {
            widget.task.toggleCheckbox();
          });
        },
      ),
      onLongPress: (){
        Provider.of<TaskListData>(context,listen: false).deleteTask(widget.task);
      },
    );
  }
}

class DoneCheckbox extends StatelessWidget {

  final bool isChecked;
  final Function checkboxCallback;

  DoneCheckbox({this.isChecked,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxCallback,
    );
  }
}
