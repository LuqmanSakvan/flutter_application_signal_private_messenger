import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListUI extends StatefulWidget {
  const ListUI({super.key});

  @override
  State<ListUI> createState() => _ListUIState();
}

class _ListUIState extends State<ListUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {},),
    title:Text("Appearance",style: TextStyle(color: Colors.black,fontSize: 24),),
    backgroundColor: Colors.white,
    ),

    body: ListView.builder(itemCount: ,itemBuilder: null),

    );
  }
}