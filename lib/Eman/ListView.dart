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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
      style: TextStyle(color: Colors.black,fontSize: 24),),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),color: Colors.black,),
      backgroundColor: Colors.white,
      ),
      //body
body:  Container(
  padding: const EdgeInsets.all(15),
  child: ListView(
    children: [
      SizedBox(height: 20,),
      Row(children: [
        Text("Signal PIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
  
      ],),
      SizedBox(height: 26,),
        Text("Change your PIN",style: TextStyle(fontSize: 20),),
        SizedBox(height: 26,),
        Text("PIN reminders",style: TextStyle(fontSize: 20),),
    ],
  ),
),
    
    );
  }
  GestureDetector buildAccountOption(BuildContext context,String title){
    return GestureDetector(
      onTap: (){},
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.w500,
          color: Colors.grey[600]
          ),)
        ],
      ),
      ),
    );
  }
}