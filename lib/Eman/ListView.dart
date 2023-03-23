import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Eman/DataModel.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: TextStyle(color: Colors.black,fontSize: 24),),
      backgroundColor: Colors.white,
      ),
body: 
        ListView.builder(shrinkWrap: true,
      itemCount: myuserlist.length,itemBuilder: (context, index) {
      return ListTile(
        title: Text(myuserlist[index].name2,style: TextStyle(fontSize: 20
              ),),
            subtitle: Text(myuserlist[index].sub_name2!.toString(),
              style: TextStyle(fontSize: 16,),),
    );
    },),

    
  


    );
  }
}