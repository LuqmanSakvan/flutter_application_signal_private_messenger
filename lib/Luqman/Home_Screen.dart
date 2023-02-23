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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ), //AppBar
      // body:
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: Icon(
            Icons.photo,
            color: Colors.black,
          ),
          onPressed: () {},
          heroTag: null,
          backgroundColor: Colors.white,
        ),
        FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {},
          heroTag: null,
        )
      ]),
    );
  }
}
