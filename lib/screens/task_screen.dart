import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
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
                    child: Icon(Icons.list,color: Colors.black,),
                  ),
                  SizedBox(height: 20.0,),
                  Text('ToDo',style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0),topRight: Radius.circular(35.0))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
