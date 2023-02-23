import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UsersList extends StatelessWidget {
  final String name;
  final int count;

  const UsersList({super.key, required this.name, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("user:$name $count"),
    );
  }
}
