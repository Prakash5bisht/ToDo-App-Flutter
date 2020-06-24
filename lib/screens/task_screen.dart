import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/widgets/task_list.dart';
import 'package:to_do/screens/task_dialog.dart';


class TasksScreen extends StatelessWidget {


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
                  child: TaskDialog(),
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
                  Text('ToDo',style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



