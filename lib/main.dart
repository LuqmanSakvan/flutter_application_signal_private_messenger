import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signal_private_messenger/Eman/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SearchScreen(),
    );
  }
}