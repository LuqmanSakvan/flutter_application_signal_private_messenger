import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ), //AppBar
      body: const Center(
        child: Text(
          'Luqman(Computer Science)',
          style: TextStyle(fontSize: 24),
        ), //Text
      ), // center
    );
  }
}
