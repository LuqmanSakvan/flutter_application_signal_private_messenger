import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Eman/DataModel.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: TextStyle(color: Colors.black,fontSize: 24),),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),color: Colors.black,),
      backgroundColor: Colors.white,
      ),

    body: Container(
padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children: [
              SizedBox(height: 40,),
              Text("Signal PIN",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    ),
    );
  }
}