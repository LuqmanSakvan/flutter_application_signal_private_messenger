import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Signal',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
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
