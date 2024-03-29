import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signal_private_messenger/Luqman/Models.dart';

String str = "";
TextEditingController n1controller = TextEditingController();

class Inbox extends StatelessWidget {
  final UserData userDataModel;

  Inbox({super.key, required this.userDataModel});

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
    ChatMessage(messageContent: "What You have", messageType: "receiver"),
    ChatMessage(messageContent: "It is not u business ", messageType: "Sender"),
    ChatMessage(
        messageContent: "Sorry for my interference", messageType: "receiver"),
    ChatMessage(messageContent: "Welcome... ", messageType: "Sender"),
    ChatMessage(messageContent: "Sorry can Ask Q? ", messageType: "receiver"),
    ChatMessage(messageContent: "Ask", messageType: "Sender"),
    ChatMessage(messageContent: "are u single?", messageType: "receiver"),
    ChatMessage(messageContent: "yes but why!", messageType: "Sender"),
    ChatMessage(messageContent: "ok thx bye", messageType: "receiver"),
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
                  userDataModel.name.substring(0, 2),
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  userDataModel.name,
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
              padding: const EdgeInsets.only(right: 3.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.color_lens,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Change Color"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Start Secret Chat"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(children: [
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Invite Friends"),
                    ]),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Share Contact")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.block,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Block User"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.clear,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Clear Messages"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Enable Auto-Delete"),
                      ],
                    ),
                  ),
                ],
                child: Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
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
                child: Row(
                  children: <Widget>[
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
                    ),

                    //SizeBox
                    SizedBox(width: 15),

                    //Write Msg
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write Your Message",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
                      ),
                    ),

                    //SizeBox
                    SizedBox(
                      width: 15,
                    ),

                    //Button Send
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.send, color: Colors.white, size: 18),
                      backgroundColor: Colors.lightBlue,
                      elevation: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
