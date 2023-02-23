import 'package:flutter/material.dart';
class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen'),
      ), //AppBar
      body: const Center(
        child: Text(
          'IT',
          style: TextStyle(fontSize: 16),
        ), //Text
      ), // center
    );
  }
}
