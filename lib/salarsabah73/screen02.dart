import 'package:flutter/material.dart';

class Screen23 extends StatelessWidget {
  const Screen23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ), //AppBar
      body: const Center(
        child: Text(
          'salar',
          style: TextStyle(fontSize: 34),
        ), //Text
      ), // center
    );
  }
}
