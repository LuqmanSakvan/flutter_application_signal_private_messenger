import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signal_private_messenger/Eman/List.dart';
import 'package:signal_private_messenger/Eman/ListView.dart';
import 'package:signal_private_messenger/Eman/Search.dart';
import 'package:signal_private_messenger/Luqman/Navigation_bar_buttom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SearchScreen(),
      // home: ListUI(),
      //home: Home(),
      //home: MyList(),
    );
  }
}
