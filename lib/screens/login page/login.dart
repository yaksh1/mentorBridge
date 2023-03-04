import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mento/screens/home/home.dart';
// import 'package:flutter_application_3/signup_page.dart';
// import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: 
      [
       
        Container(
        width: 360,
        height: h*0.3,
                child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset('assets/Group_19.png'),
            ),
      ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children:[
              Text("Mentor-Bridge",
              style: TextStyle(fontSize: 40,
              fontWeight: FontWeight.bold,
                  color: Colors.purple[300]),
              ),
              Text(

            "Building strong Mentor-Mentee Relations",
              style: TextStyle(fontSize:20,
              fontWeight: FontWeight.normal,
              color: Colors.grey[600]),
              ),
              SizedBox(height: 20,),
              TextField(
            
                decoration: InputDecoration( 
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30)
                )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
                  )
            ],
          )
         ),
        SizedBox(height: 8,),
        SizedBox(height: 70,
            child: InkWell(
              child: Container(
                width: w ,
                height: h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset('assets/Group_3.png'),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
        ),
        // SizedBox(height:1),
        Container(
        width: w,
        height: h*0.3,
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