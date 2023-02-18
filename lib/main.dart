import 'package:flutter/material.dart';
import 'package:signal_private_messenger/YousifRaed/screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1() ,
    );
  }
}
