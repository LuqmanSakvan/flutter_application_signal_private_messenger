import 'package:flutter/material.dart';
import 'package:signal_private_messenger/Luqman/Home_Screen.dart';
import 'package:signal_private_messenger/salarsabah73/screen01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}