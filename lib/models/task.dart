import 'package:flutter/material.dart';
import 'package:mento/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.iconColor,
      this.bgColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      // first group of task
      Task(
        iconData: Icons.person_rounded,
        title: 'Personal',
        bgColor: Colors.yellow[100],
        iconColor: Colors.yellow[500],
        btnColor: Colors.yellow[200],
        left: 3,
        done: 1,
      ),
      // second group of task
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor:  Colors.red[50],
        iconColor: Colors.red[300],
        btnColor: Colors.red[200],
        left: 2,
        done: 10,
      ),
      // third group
      Task(
        iconData: Icons.person_rounded,
        title: 'XYZ',
        bgColor: Colors.blue[50],
        iconColor: Colors.blue[300],
        btnColor: Colors.blue[200],
        left: 5,
        done: 1,
      ),
      // when you want to add more group
      Task(isLast: true)
    ];
  }
}
