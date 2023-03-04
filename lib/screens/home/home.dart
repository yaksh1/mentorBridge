// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mento/screens/home/widgets/myTasks.dart';
import 'package:flutter/gestures.dart';
import 'widgets/lists.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      // ignore: prefer_const_constructors
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // "My tasks text"
          MyTasks(),
          Expanded(
            // how all the tasks are made
            child: Lists(),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      // our main floating button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.task_rounded,size:30),
        ),
    );
  }

//  styling and positioning bottom menu bar
  Widget _buildBottomNavigationBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 184, 212, 236),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.grey.withOpacity(0.5),
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              // currentIndex: _currentIndex,
              // onTap: (index) {
              //   setState(() => _currentIndex = index);
              //   _loadScreen();
              // },
              items: [
                BottomNavigationBarItem(
                    label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
    
                // BottomNavigationBarItem(
                //     label: 'search', icon: Icon(Icons.search_rounded, size: 30)),
                BottomNavigationBarItem(
                    label: 'Messages', icon: Icon(Icons.person_rounded, size: 30)),
                // BottomNavigationBarItem(
                //     label: 'Tasks', icon: Icon(Icons.task_rounded, size: 30))
              ],
            )));
  }

// our logo at top left
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 41,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset('assets/logo_1.png'),
            ),
          ),
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        Icon(
          Icons.expand_circle_down,
          color: Colors.purple.shade100,
          size: 40,
        )
      ],
    );
  }
}


//  