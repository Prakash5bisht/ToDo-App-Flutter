import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/widgets/task_list.dart';
import 'package:to_do/screens/task_dialog.dart';
import 'package:to_do/models/Task.dart';

class TasksScreen extends StatefulWidget {


  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [
//    Task(name: 'milk'),
//    Task(name: 'eggs'),
//    Task(name: 'vinegar'),
//    Task(name: 'olive oil'),
//    Task(name: 'olive oil'),
//    Task(name: 'olive oil'),
//    Task(name: 'olive oil'),
//    Task(name: 'olive oil'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff595959),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: (){
          showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen((newTaskTitle){
                    setState(() {
                    tasks.add(Task(name: newTaskTitle));
                    });
                  }),
                ),
              ));
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60.0,left: 20.0,right: 20.0,bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list,color: Colors.black, size: 29.0,),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    '${tasks.length} tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('ToDo',style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0,bottom: 70.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))
                ),
                child: TaskList(tasks,tasks.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



