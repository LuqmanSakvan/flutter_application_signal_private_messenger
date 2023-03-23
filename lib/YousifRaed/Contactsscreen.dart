

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<ContactsScreen> {

final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
          "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
      "id": 1,
      "name": "Haland",
      "Phone": "0750 707 0707",
    },
    {
      "id": 2,
      "name": "Dr. Mohamed",
      "Phone": "0750 707 0808",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
    },
    {
      "id": 3,
      "name": " Aram ",
      "Phone": "0750 707 0909 ",
      "image":
          "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
    },
    {
      "id": 4,
      "name": "Azad ",
      "Phone": "0750 807 0101",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
    },
    {
      "id": 5,
      "name": "Shelby",
      "Phone": "0750 070 8080 ",
      "image":
          "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
    },
    {
      "id": 6,
      "name": "James",
      "Phone": "0750 550 0808",
      "image":
          "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
    },
    {
      "id": 7,
      "name": "Dr.Ahmed",
      "Phone": "0751 808 0808",
      "image":
          "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
    },
    {
      "id": 8,
      "name": " Scripted ",
      "Phone": "0751 808 0222",
      "image":
          "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
    },
    {
      "id": 9,
      "name": "Amar",
      "Phone": "0751 808 1111 ",
      "image":
          "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
    },
    {
      "id": 10,
      "name": "Tom",
      "Phone": "0751 454 5454",
      "image":
          "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
    },
  ];

// This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

// This function is called whenever the text field changes
  void _txtfieldFilter(String enterKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enterKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, All user will be displayed
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enterKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ElevatedButton(onPressed: (() {
        
      }), child: Icon(Icons.arrow_back))),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        TextField(
          
             onChanged: (value) => _txtfieldFilter(value),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  hintText: "Search name or number",
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(),
                  ),
                ),
              ),
             Stack(children: [Container(height: 100,width: 400,color: Colors.transparent,),
            Positioned(top:15,child: ElevatedButton.icon(onPressed:(() {}), icon: Icon(Icons.groups), label: Text("New Group")
            ,style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,foregroundColor: Colors.black,
),
            )),
             Positioned(top:86,left:10,child: Text("Contacts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
            
             ],
             ),
             const SizedBox(
                height: 25,
              ),
 Expanded(
              child: _foundUsers.isNotEmpty
                  ? Scrollbar(
                    thickness: 10,isAlwaysShown: true,
                    child: ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  NetworkImage(_foundUsers[index]['image']),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(_foundUsers[index]['name'],style: TextStyle(fontWeight: FontWeight.w500),),
                            subtitle: Text('${_foundUsers[index]["Phone"]}',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                          ),
                        ),
                      ),
                  )
                  : const Text(
                      'No results found ',
                      style: TextStyle(fontSize: 24),
                    ),
            ),


      ],),
    ),
    
    );
  }
}