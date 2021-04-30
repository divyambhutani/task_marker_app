import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function onCheck;
  final Function deleteTask;
  TaskTile({
    @required this.taskName,
    @required this.isChecked,
    @required this.onCheck,
    @required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          onCheck();
        },
      ),
    );
  }
}
