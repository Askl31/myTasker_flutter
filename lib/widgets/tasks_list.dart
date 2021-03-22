import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasker/models/task_data.dart';
import 'package:tasker/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isCheck,
          checkboxCallback: (checkboxState) {
            Provider.of<TaskData>(context, listen: false).updateCheck(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
          longPressCallback: () => Provider.of<TaskData>(context, listen: false)
              .removeTask(
                  Provider.of<TaskData>(context, listen: false).tasks[index]),
        );
      },
    );
  }
}
