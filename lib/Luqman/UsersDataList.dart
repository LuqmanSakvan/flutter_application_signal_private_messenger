import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';
import 'dart:math';
import 'dart:convert';
import 'package:signal_private_messenger/Luqman/Models.dart';
import 'package:http/http.dart' as http;
import 'package:signal_private_messenger/Luqman/inbox.dart';

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
//https://jsonplaceholder.typicode.com/users

  Future<List<User>> _getUsers() async {
    var data =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var jsonData = json.decode(data.body);

    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u['id'], u['name']);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    Color getRandomColor() =>
        Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return Container(
      child: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return (ListView.builder(
            itemCount: userlist.length,
            itemBuilder: (BuildContext context, int index) {
              return (InkWell(
                splashColor: getRandomColor(),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inbox()));
                },
                child: Ink(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: getRandomColor(),
                      child: Text(
                          userlist[index].name.substring(0, 2).toUpperCase()),
                    ),
                    title: Text(userlist[index].name),
                    subtitle: Text(
                      '${userlist[index].name} is on Signal',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    trailing: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text("Jan 6"),
                      ],
                    ),
                  ),
                ),
              ));
            },
          ));
        },
      ),
    );
  }
}
