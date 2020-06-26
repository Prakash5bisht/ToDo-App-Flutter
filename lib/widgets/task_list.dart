import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';
import 'package:to_do/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider.of<TaskData>(context).taskCount > 0 ? Consumer<TaskData>(
      builder: (context, taskData, child){ // here tasData = Provider.of<TaskData>(context)
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              child: TaskTile(
                textTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone ,

                checkboxCallback: (checkboxStatus) {
                  taskData.updateTasks(taskData.tasks[index]);
                },
                deleteTaskCallback: (){
                  taskData.removeTask(taskData.tasks[index]);
                },
              ),
            );
          },
        );
      },
    ) : Center(child: Text('add daily tasks',
                           style: TextStyle(color: Colors.grey, fontSize: 17.0),
                          ),
                        );
  }
}