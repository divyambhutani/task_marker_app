import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              deleteTask: () {
                taskData.deleteTask(index);
              },
              taskName: taskData.getTaskName(index),
              isChecked: taskData.getTaskStatus(index),
              onCheck: () {
                taskData.changeTaskStatus(index);
              },
            );
          },
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}
