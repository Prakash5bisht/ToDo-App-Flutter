import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;

 final String textTitle;

 final Function checkboxCallback;

 TaskTile({this.textTitle,this.isChecked,this.checkboxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
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
