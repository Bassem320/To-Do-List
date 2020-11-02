import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_flutter_app/models/task_data.dart';
import 'package:todolist_flutter_app/models/task_list_data.dart';

class AddTaskScreen extends StatefulWidget {


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0,),
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent
            ),),
            TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'New Task'),
              onChanged: (text){
                newTaskText = text;
              },
            ),
            SizedBox(height: 10.0,),
            FlatButton(onPressed: (){
              Provider.of<TaskListData>(context,listen: false).addNewTask(Task(name: newTaskText));
              Navigator.pop(context);
            },
              color: Colors.lightBlueAccent,
                child: Text('Add',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    )
                ),)
          ],
        ),
      ),
    );
  }
}