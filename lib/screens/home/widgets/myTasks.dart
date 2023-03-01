// ignore_for_file: unnecessary_import, file_names, implementation_imports, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';


class MyTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 60),
      padding: EdgeInsets.all(20),
      alignment: AlignmentDirectional.center,
      child: Text('My Tasks',        
      style: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold),
      )
    );
  }
}