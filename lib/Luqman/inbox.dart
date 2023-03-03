import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Luqman/Models.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello Luqman", messageType: "receiver"),
    ChatMessage(messageContent: "Hey,How are you", messageType: "Sender"),
    ChatMessage(messageContent: "I am Fine Thanks", messageType: "receiver"),
    ChatMessage(messageContent: "What Do you do", messageType: "Sender"),
    ChatMessage(
        messageContent: "Working on cerate new app", messageType: "receiver"),
    ChatMessage(
        messageContent: "Wow,that is cool,which app", messageType: "Sender"),
    ChatMessage(
        messageContent: "Signal Private Message", messageType: "receiver"),
    ChatMessage(
        messageContent: "yea that is good new app", messageType: "Sender"),
    ChatMessage(messageContent: "right it is new app", messageType: "receiver"),
    ChatMessage(messageContent: "ok,so now i am busy", messageType: "Sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'LU',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Luqman",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.phone,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.video_call,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    left: 14.0, right: 14, top: 10, bottom: 10.0),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: messages[index].messageType == 'receiver'
                            ? Color(0xFF10EA955)
                            : Colors.grey.shade200),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(
                          fontSize: 18,
                          color: messages[index].messageType == "receiver"
                              ? Colors.white
                              : Colors.black87),
                    ),
                  ),
                ),
              );
            },
          ),
          //below part(TextField,icon(Add,Send))
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10.0),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    //Button Add
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
