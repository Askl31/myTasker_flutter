import 'package:flutter/material.dart';
import 'package:tasker/widgets/tasks_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        width: 64.0,
        height: 64.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Color(0xFF006CFF),
            size: 24.0,
          ),
          onPressed: () {
            //TODO : action FloatingButton
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 60.0,
              top: 60.0,
            ),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 32, /*TODO : changer police*/
              ),
            ),
          ),
          Expanded(
            child: TasksList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, top: 32.0, bottom: 15.0),
            child: Text(
              'Lists',
              style: TextStyle(
                color: Color(0X70252A31),
                fontSize: 16, /*TODO : changer police*/
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
