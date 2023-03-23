import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabStories extends StatefulWidget {
  const TabStories({super.key});

  @override
  State<TabStories> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabStories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(height: 810,width: 400,color: Colors.white),
    Positioned(top:100,right: 240,child: Text("Signal",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),),
    Positioned(top:100,right:340,child:CircleAvatar(child: Icon(Icons.circle),) ),
    Positioned(child: Icon(Icons.search))
  ],
),

    );
  }
}