import 'package:flutter/material.dart';
import 'package:to_do/screens/task_screen.dart';
void main() => runApp(ToDo());

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
