import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';
import 'dart:math';
import 'dart:convert';

class UsersList extends StatelessWidget {
  const UsersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignalList(),
    );
  }
}

class SignalList extends StatefulWidget {
  SignalList({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _SignalListState createState() => new _SignalListState();
}

class _SignalListState extends State<SignalList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("$count"),
      ]),
    );
  }
}
