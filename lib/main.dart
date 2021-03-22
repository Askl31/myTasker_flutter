import 'package:flutter/material.dart';
import 'package:tasker/models/task_data.dart';
import 'package:tasker/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Tasker',
        home: Home(),
      ),
    );
  }
}
