import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  AddTaskScreen(this.addTaskCallback);
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150.0, top: 30.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             Text('Add Task',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontSize: 20.0,
               fontWeight: FontWeight.w500
             ),
             ),
             SizedBox(height: 20.0,),
             TextField(
               autofocus: true,
               textAlign: TextAlign.center,
               autocorrect: true,
               textCapitalization: TextCapitalization.sentences,
               style: TextStyle(fontSize: 20.0),
               decoration: InputDecoration(
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Color(0xff595959)),
                 )
               ),
               cursorColor: Colors.grey[500],
               onChanged: (value){
                 newTaskTitle = value;
               },
             ),
             SizedBox(height: 20.0,),
             RaisedButton(
               child: Text('ADD',
               style: TextStyle(
                 color: Colors.white,
               ),
               ),
               color: Color(0xff1a1a1a),
               onPressed: (){
                  addTaskCallback(newTaskTitle);
                  Navigator.pop(context);
               },
             )
            ],
          ),
        ),
      ),
    );
  }
}
