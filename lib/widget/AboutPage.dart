import 'dart:math';

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double ts=max(MediaQuery.of(context).size.width*0.08,50);
    String str="I Am Vikram Balai, Student Developer";
    String str2="Experienced Android Developer with a demonstrated history of working in the computer software industry. Skilled in Loyalty Programs, Mobile Applications, Java, and last my most favourite flutter framework (builded over more then 15 project on it). Strong engineering professional with a High School Diploma focused in Information Technology from Vidyalankar Group of Educational Institutes. ";
    return Container(
      // height:max(MediaQuery.of(context).size.width*0.7,MediaQuery.of(context).size.height),
       padding: EdgeInsets.symmetric(horizontal: 50,vertical: 0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('About Me',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: ts/3),),
            SizedBox(height: 10.0,),
            Text(str,style: TextStyle(fontSize: ts/4,color:Colors.white70),),
            SizedBox(height: 10.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                   width:MediaQuery.of(context).size.width*0.48,
                   height:min(MediaQuery.of(context).size.width*0.45,400),
                   child: Text(str2,style: TextStyle(fontSize: ts/4,color:Colors.white70),)
                 ),
                 Image(
                   height:MediaQuery.of(context).size.width*0.30,
                   image: AssetImage("assests/mypic.png"),
                   fit: BoxFit.cover,
                 ),
               ],
             ),
            SizedBox(height: 15.0,),
            Text('Skills',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: ts/3),),
            SizedBox(height: 20.0,),
            Image(
              height: 60,
              image: AssetImage("assests/skills.png"),
              fit: BoxFit.cover,
            ),
         ],
       ),
    );
  }
}