import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.textTitle,this.isChecked,this.checkboxCallback,this.deleteTaskCallback});

 final bool isChecked;

 final String textTitle;

 final Function checkboxCallback;

 final Function deleteTaskCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      leading: Text(
        textTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing:  Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}
