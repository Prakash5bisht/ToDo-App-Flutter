import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/models/Task.dart';
import 'package:to_do/widgets/task_tile.dart';

class TaskList extends StatefulWidget {

  TaskList(this.tasks,this.noOfTasks);
 final List<Task> tasks;
 final int noOfTasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return widget.noOfTasks > 0 ? ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index){
        return TaskTile(
            textTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone ,
            checkboxCallback: (checkboxStatus) {
          setState(() {
           widget.tasks[index].done();
          });
        },
        );
      },
    ) : Center(child: Text('add daily tasks',
                           style: TextStyle(color: Colors.grey, fontSize: 17.0),
                          ),
                        );
  }
}