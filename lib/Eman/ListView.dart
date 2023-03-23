import 'dart:ui';

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
 bool valNotify1=true;
bool valNotify2=false;
bool valNotify3=false;

onChageFunction1(bool newValue1){
  setState((){
    valNotify1=newValue1;
  });
}

onChageFunction2(bool newValue2){
  setState((){
    valNotify2=newValue2;
  });
}

onChageFunction3(bool newValue3){
  setState((){
    valNotify3=newValue3;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: TextStyle(color: Colors.black,fontSize: 24),),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),color: Colors.black,),
      backgroundColor: Colors.white,
      ),
body:  ListView.builder(shrinkWrap: true,
      itemCount: myuserlist.length,itemBuilder: (context, index) {
      return ListTile(
      title: Text(myuserlist[index].name2,style: TextStyle(fontSize: 20 ),),
      subtitle: Text(myuserlist[index].sub_name2!.toString(),
      style: TextStyle(fontSize: 16,),),
    );

         Container(height: 20,width: 300,
           child: Divider(
                   color: Colors.black,
                    thickness: 2,
                    ),
         );
ListTile(
    title: Text(myuserlist[index].name2,style: TextStyle(fontSize: 20),),
                 
     subtitle: Text(myuserlist[index].sub_name2!.toString(),style: TextStyle(fontSize: 16,),),
     
          
                  
        );


    },),
    
    );
  }
}