import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings" , style: TextStyle(fontSize: 20)),
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
            )
          ],
        ),
      ),
    );
  
  }
}