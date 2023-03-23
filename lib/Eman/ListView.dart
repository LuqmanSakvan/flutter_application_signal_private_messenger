import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Eman/DataModel.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: TextStyle(color: Colors.black,fontSize: 24),),
      backgroundColor: Colors.white,
      ),
body: ListView.builder(itemCount: myuserlist.length,
itemBuilder: (context, index) {
  return ListTile(
    title: Text(myuserlist[index].hed!.toString(),style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),),
          subtitle: Text(myuserlist[index].name2!.toString(),
          style: TextStyle(
            fontSize: 16,
          ),),
  );
},),

    );
  }
}