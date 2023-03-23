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
    Container(height: 810,width: 400,color: Colors.white)
  ],
),

    );
  }
}