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
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      title:Text("Search",style: TextStyle(color: Colors.black,
        fontSize: 24,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {
            showSearch(context:context , delegate: MySearchDelegate(),);
          }, icon: const Icon(Icons.search),
          color: Colors.black,)
        ],
      ),
     );
  } 
}
class  MySearchDelegate extends  SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(onPressed: (){
      if (query.isEmpty){
        close(context, null); // close searchbar
      }
      else{
      query='';}
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
  Widget buildResults(BuildContext context) => Container() ;
    
  

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
  
}
