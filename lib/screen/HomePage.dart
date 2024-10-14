import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/model/Method.dart';
import 'package:portfolio/widget/AboutPage.dart';
import 'package:portfolio/widget/AppBarTitle.dart';
import 'package:portfolio/widget/FooterPage.dart';
import 'package:portfolio/widget/IntroPage.dart';
import 'package:portfolio/widget/ProjectPage.dart';
import 'package:portfolio/widget/ProjectWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method=new Method();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      body:Stack(
        children:[
        Image.network(
          scale:0.1,
          'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZXRqNjZ5djJlcWM2eW80eTNncnB0MHB4MDIzMHlyOWNwd2I2YmJsYSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xT9IgN8YKRhByRBzMI/giphy.gif',
        ),
        SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: NetworkImage(
            //       'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZHpid3B6eng0dnQ1cnlkcHNqMHdlNWF2NmQ2eDZzYnJmY3liaThtbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/OK5LK5zLFfdm/giphy.gif',
            //     ),
            //     fit: BoxFit.cover, // Ensure the GIF covers the entire container
            //   ),
            // ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                IntroPage(),
                AboutPage(),
                Padding(
                  padding:  EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
                  child: Text('My Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                ),
                 Padding(
                   padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                   child:  ProjectWidget("Food delivery Application Build With Flutter And Firebase (Backend)","project1.png","Flutter Dart Firebase","Foodie"),
                 ),

                   Padding(
                   padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                   child:  ProjectWidget2("Social Media Application Builded With Android Studio And Firebase(Backend)","project2.png","Android Studio Java Firebase","PinGo"),
                 ),
                   Padding(
                   padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                   child:  ProjectWidget("NetFlix Mobile And Web Ui Clone Builded With Flutter","project3.png","Flutter Dart ","NetFlix UI"),
                 ),
                 FooterPage(),
              ],
            ),
            ),
                ),
        ],
      ),
    );
  }
}