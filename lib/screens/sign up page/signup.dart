import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mento/screens/login%20page/login.dart';

class signup_page extends StatefulWidget {
  const signup_page({Key? key}) : super(key: key);

  @override
  _signup_pageState createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 360,
            height: 246,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset('assets/Group_22.png'),
            ),
          ),
          Container(
              child: Column(
            children: [
              Text(
                "Let's Get Started!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[300]),
              )
            ],
          )),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )
                ],
              )),
          // SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )
                ],
              )),
          // SizedBox(height: 5,),

          SizedBox(
            height: 100,
            child: InkWell(
              child: Container(
                width: 194,
                height: 91,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset('assets/register_button.png'),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              },
            ),
          ),
          Container(
            width: w,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset('assets/Group_20.png'),
            ),
            // recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> signup_page())//link
          ),
        ],
      ),
    );
  }
}
