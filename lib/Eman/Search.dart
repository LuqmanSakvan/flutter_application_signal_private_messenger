import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final List<Map<String,dynamic>> _allUsers=[
    {
      "id": 1,
    "name": "Eman khalid",
    "des": "co_founder & CEO @"
    },
     {
      "id": 2,
    "name": "Viyan khalid",
    "des": "co_founder & CEO @"
    },
     {
      "id": 3,
    "name": "DAKHAZ khalid",
    "des": "co_founder & CEO @"
    },
     {
      "id": 4,
    "name": "Hahat khalid",
    "des": "co_founder & CEO @"
    },
     {
      "id": 5,
    "name": "Awaz khalid",
    "des": "co_founder & CEO @"
    }
  ];

  List<Map<String,dynamic>> _foundUsers=[];
   @override
initState() {
    _foundUsers=_allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeybord){
    List<Map<String,dynamic>> results=[];
    if(enteredKeybord.isEmpty){
      results=_allUsers;
      }
else{
      results=_allUsers.where((user) => 
      user["name"].toLowerCase().contains(enteredKeybord.toLowerCase())).toList();
    }
    //Refresh the UI
    setState(() {
      _foundUsers=results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 5),
        child: Column(children: [
          TextField(
            onChanged: (value) => _runFilter(value),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
              hintText: "Search",
              prefixIcon: IconButton(onPressed:() {
                 Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(),
              )
            ),
          ),
SizedBox(height: 20,),

       Expanded(child: _foundUsers.isNotEmpty
       ? ListView.builder(itemCount: _foundUsers.length,
        itemBuilder: (context, index) => Card(
        elevation: 1,
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: ListTile(
          title: Text(_foundUsers[index]['name']),
          subtitle: Text('${_foundUsers[index]["dos"]}'),
        ),

        ),
         )
         :const Text("No chats yet.Get started by messaging a friend.",
         textAlign: TextAlign.center,
         style: TextStyle(fontSize: 20,),)
         ),

        ]),
      ),
     );
  } 
}

  

