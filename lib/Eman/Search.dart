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
    "des": "Student"
    },
     {
      "id": 2,
    "name": "Viyan khalid",
    "des": "Structural Enggineer"
    },
     {
      "id": 3,
    "name": "DAKHAZ khalid",
    "des": "Agricultural Engineer"
    },
     {
      "id": 4,
    "name": "Hahat khalid",
    "des": "Engineer"
    },
     {
      "id": 5,
    "name": "Awaz khalid",
    "des": "She is Teacher"
    },
    {
      "id": 6,
    "name": "Enas khalid",
    "des": "Student"
    },
    {
      "id": 7,
    "name": " Khalid hasan",
    "des": "co_founder & CEO @"
    },

    {
      "id": 8,
    "name": "Ahmed khalid",
    "des": "Student"
    },
    {
      "id": 9,
    "name": "Mhamed khalid",
    "des": "Student"
    },
    {
      "id": 6,
    "name": "Jihan khalid",
    "des": "Teachers"
    },
    {
      "id": 6,
    "name": "Dlxaz khalid",
    "des": "Employee"
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
              }, icon: Icon(Icons.arrow_back),color: Colors.black,),
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
          subtitle: Text('${_foundUsers[index]["des"]}'),
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

  

