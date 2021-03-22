import 'package:flutter/material.dart';
import 'package:tasker/widgets/roundedCheckbox.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.taskTitle});
  final String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: false,
          ),
          title: Text(taskTitle),
          trailing: Icon(
            Icons.circle,
            color: Colors.lightGreen,
            size: 15.0,
          ),
        ),
        Divider(
          color: Color(0X90252A31),
          indent: 60.0,
        )
      ],
    );
  }
}
