import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}
final List<Map<String, dynamic>> _allUsers = [

  
];

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ElevatedButton.icon(onPressed: (() {}), icon:Icon(Icons.arrow_back), label: Text("New Message"))),
    );
  }
}