import 'package:flutter/material.dart';
import 'package:signal_private_messenger/salarsabah73/screen02.dart';



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
      home:  Screen23(),
    );
  }
}
