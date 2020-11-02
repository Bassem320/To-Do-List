import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {


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
              decoration: InputDecoration(hintText: 'New Task'),
            ),
            SizedBox(height: 10.0,),
            FlatButton(onPressed: (){},
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