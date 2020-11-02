import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_flutter_app/models/task_list_data.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: TaskListData())
      ],
      child: MaterialApp(
        home: Main(),
      ),
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
      body: HomeScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddTaskScreen();
          });
        },
      ),
    );
  }
}

