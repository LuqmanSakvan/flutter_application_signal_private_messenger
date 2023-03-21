import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Eman/DataModel.dart';
import 'package:signal_private_messenger/Luqman/Models.dart';

class ListUI extends StatelessWidget {
  const ListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading: IconButton(icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {},),
    title:Text("Appearance",style: TextStyle(color: Colors.black,fontSize: 24),),
    backgroundColor: Colors.white,
    ),
     body: ListView.builder(itemCount: myuserlist.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(myuserlist[index].name),
          subtitle: Text(myuserlist[index].sub_name!.toString()),
        );
      }),
    );
  }
}
/*
 The ListTile widget contains a Title, Subtitle, Leading Icon, 
 and Trailing Icon. The ListTile widget is typically used 
 to populate a ListView. For example, you can use the ListTile 
 to show a list of To Do items or emails.
 */