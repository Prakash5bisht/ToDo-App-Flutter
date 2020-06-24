import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('milk'),
      trailing: Checkbox(value: false,),
    );
  }
}
