import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}
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
      "name": " Muayad ",
      "Phone": "0750 707 0909 ",
      "image":
          "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
    },
    {
      "id": 4,
      "name": "Fuad ",
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
      "name": "Arthur",
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
      "name": "Caversky",
      "Phone": "0751 808 1111 ",
      "image":
          "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
    },
    {
      "id": 10,
      "name": "Dr. Ahmed",
      "Phone": "0751 454 5454",
      "image":
          "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
    },

];
// This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // We used to show all the users when u enter the screen
    _foundUsers = _allUsers;
    super.initState();
  }



class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ElevatedButton.icon(onPressed: (() {}), icon:Icon(Icons.arrow_back), label: Text("New Message"))),
    body:Column(
      children: [
        TextField(
          // onChanged: (value) =>_runFilter(value),
          decoration: InputDecoration(
            contentPadding: 
            const EdgeInsets.symmetric(vertical:10.0,horizontal: 15),
            hintText: "Search name or number",
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(),
            ),
          ),
        ),
const SizedBox(
  height: 20,
),

      ],
    ),
    
    );
  }
}