import 'package:flutter/material.dart';
import 'package:tasker/widgets/roundedCheckbox.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {@required this.taskTitle,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback});

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
          ),
          title: Text(
            taskTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: Icon(
            Icons.circle,
            color: Colors.lightGreen,
            size: 15.0,
          ),
          onLongPress: longPressCallback,
        ),
        Divider(
          color: Color(0X90252A31),
          indent: 60.0,
        )
      ],
    );
  }
}
