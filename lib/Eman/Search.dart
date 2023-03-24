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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 5),
        child: Column(children: [
          TextField(
            //onChanged: (value) => _runFilter(value),
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
SizedBox(height: 20,)

        ]),
      ),
     );
  } 
}
class  MySearchDelegate extends  SearchDelegate{
  List<String> searchResults =[
'Barazil',
'china',
'India',
'Russia',
'USA',
'Maldif',
'London',
'NewYourk',
'Canada',
'dlhi',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(onPressed: (){
      if (query.isEmpty){
        close(context, null); // close searchbar
      }
      else
      {
      query='';
      }
      }, 
    icon: const Icon(Icons.clear),
    ),
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
    );
    
  

  @override
  Widget buildResults(BuildContext context) => Center(
child: Text(query,
style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
List<String> suggestions = searchResults.where((searchResult) {
final result =searchResult.toLowerCase();
final input=query.toLowerCase();
return result.contains(input);
}).toList();



return ListView.builder(
  itemCount: suggestions.length,
  itemBuilder:(context, index) {
    final suggestion = suggestions[index];

    return ListTile(
      title: Text(suggestion),
      onTap: () {
        query=suggestion;
        showResults(context);
      },
    );
  },
   );
  }
}
