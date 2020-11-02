import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/screens/home_screen.dart';
import 'package:todolist_flutter_app/screens/add_task_screen.dart';

import 'models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {



  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Task> taskList = [
    
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: HomeScreen(
        taskList: taskList,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddTaskScreen((Task newTask){
              setState(() {
                taskList.add(newTask);
              });
            });
          });
        },
      ),
    );
  }
}

