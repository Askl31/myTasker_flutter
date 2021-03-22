import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasker/models/task_data.dart';
import 'package:tasker/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskValue, child) {
        return ListView.builder(
            itemCount: taskValue.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskValue.tasks[index].name,
                isChecked: taskValue.tasks[index].isCheck,
                checkboxCallback: (checkboxState) {
                  taskValue.updateCheck(taskValue.tasks[index]);
                },
                longPressCallback: () =>
                    taskValue.removeTask(taskValue.tasks[index]),
              );
            });
      },
    );
  }
}
