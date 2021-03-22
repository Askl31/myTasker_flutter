import 'package:flutter/material.dart';
import 'package:tasker/screens/add_list_screen.dart';
import 'package:tasker/screens/add_task_screen.dart';

class MenuFloatingButton extends StatefulWidget {
  @override
  _MenuFloatingButtonState createState() => _MenuFloatingButtonState();
}

class _MenuFloatingButtonState extends State<MenuFloatingButton> {
  IconData menuFAB = Icons.add;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Row(
            children: [
              Icon(
                Icons.check,
                color: Color(0xFF006CFF),
              ),
              SizedBox(width: 20),
              Text(
                'Tache',
                style: TextStyle(color: Color(0xFF006CFF)),
              ),
            ],
          ),
          value: 1,
        ),
        PopupMenuDivider(
          height: 12,
        ),
        PopupMenuItem(
          child: Row(
            children: [
              Icon(
                Icons.calendar_view_day_rounded,
                color: Color(0xFF006CFF),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Liste',
                style: TextStyle(
                  color: Color(0xFF006CFF),
                ),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          value: 2,
        ),
      ],
      child: Container(
        width: 64.0,
        height: 64.0,
        child: FloatingActionButton(
          // onPressed: () {
          //   setState(
          //     () {
          //       menuFAB == Icons.add
          //           ? menuFAB = Icons.close
          //           : menuFAB = Icons.add;
          //     },
          //   );
          // },
          backgroundColor: Colors.white,
          child: Icon(
            menuFAB,
            color: Color(0xFF006CFF),
            size: 24.0,
          ),
        ),
      ),
      offset: Offset(0, -180),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      onSelected: (int index) {
        index == 1
            ? showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) => AddTaskScreen())
            : showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => AddListScreen());
      },
    );
  }
}
