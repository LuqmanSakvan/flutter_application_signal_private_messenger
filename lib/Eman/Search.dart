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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          //onChanged: (value) => _runFilter(value),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15)
          ),
        ),
      ]),
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
