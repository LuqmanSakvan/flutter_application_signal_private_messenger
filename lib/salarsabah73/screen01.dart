import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings" , style: TextStyle(fontSize: 26)),
        leading: IconButton(onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              leading: CircleAvatar(backgroundColor: Colors.blue,
              child: Text(
                'unkown'[0].toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),
              ),
              ),
              title: Text(
                'unkown',
                style: TextStyle(fontWeight: FontWeight.bold , fontSize: 38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Account" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.device_unknown,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Linked-Device" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text("Donate to Signal" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Divider(height: 20,thickness: 1),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.brightness_2_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Appearance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.chat,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.web_stories,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Stories" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Notifications" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.privacy_tip,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10,),
                  Text("privacy" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Divider(height: 20,thickness: 1),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.payment_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Payments" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                ],
              ),
            )

          ],
        ),
      ),
    );
    Widget buildListTile({
      required String title,
    }) =>
    ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      leading: CircleAvatar(backgroundColor: Colors.blue,
      child: Text(
        title[0].toUpperCase(),
      ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold , fontSize: 38),
      ),
    );
  
  }
}