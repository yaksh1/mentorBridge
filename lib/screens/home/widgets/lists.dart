// ignore_for_file: unnecessary_import, implementation_imports, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:mento/models/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Lists extends StatelessWidget {
  final tasksList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) => tasksList[index].isLast
            ? _buildAddTask()
            : _buildTask(context, tasksList[index]),
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder (
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      dashPattern: [10,10],
      color: Colors.grey.withOpacity(0.7),
      strokeWidth: 2,
      child: Center(
        child: Text(
          '+ Add',
          style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,
          ),
        )
      ) 
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        decoration: BoxDecoration(
          color: task.bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              task.iconData,
              color: task.iconColor,
              size: 35,
            ),
            SizedBox(height: 30),
            Text(
              task.title!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                _buildTaskStatus(
                    task.btnColor!,task.iconColor!, '${task.left} left'),
                    SizedBox(width:5),
                _buildTaskStatus(Colors.white, task.iconColor!, '${task.done} done')
              ],
            )
          ],
        ));
  }

  // task status widget
  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20)), // BoxDecoration
      child: Text(
        text,
        style: TextStyle(color: txColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
