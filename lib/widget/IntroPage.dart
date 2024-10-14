import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/model/Method.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    double ts=max(MediaQuery.of(context).size.width*0.08,50);
    Method method=new Method();
    String str="Student Developer Who Exploring New Things In Dev Part Of IT World";
    return Container(
      height:MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              // SizedBox(height: 20.0,),
              Text('Hi ! I am ,',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: ts/3),),
              SizedBox(height: 5.0,),
              Text('Vikram Balai',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ts),),
              SizedBox(height: 5.0,),
              Text('I Build Android Application',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: ts/2),),
              // SizedBox(height: 50.0,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.08,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(url: "https://www.hackerrank.com/jadhavakshay0701",img: "assests/facebook.png"),
                SizedBox(height:20.0),
                MyButton(url: "https://www.hackerrank.com/jadhavakshay0701",img: "assests/github.png"),
                SizedBox(height:20.0),
                MyButton(url: "https://www.hackerrank.com/jadhavakshay0701",img: "assests/hackerrank.png"),
                SizedBox(height:20.0),
                MyButton(url: "https://www.linkedin.com/in/akshay-jadhav-90ba81134/",img: "assests/linkedin.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget MyButton({required String url,required String img}){
    Method method=new Method();
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color(0xff0A192F), // Background color
        //primary: Color(0xff48E1EC), // Text color
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
        shape: CircleBorder(
          // borderRadius: BorderRadius.circular(6.0),
          side: BorderSide(color: Color(0xff48E1EC)), // Border color
        ),
        overlayColor:Colors.white, // Custom hover color
        splashFactory: InkRipple.splashFactory, // Use ripple effect
      ),
      onPressed: (){
        method.launchURL(url);
      },
      child: Image(
        width: max(MediaQuery.of(context).size.width*0.03,40),
        height: max(MediaQuery.of(context).size.width*0.03,40),
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
    );
  }
}