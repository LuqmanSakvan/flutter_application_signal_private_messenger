import 'package:flutter/material.dart';
import 'package:signal_private_messenger/Eman/Search.dart';
import 'package:signal_private_messenger/Luqman/UsersDataList.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Signal',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
          //Work here for PopUp Menu Item
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("New Group"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.mark_chat_read,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Mark all read"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(children: [
                  Icon(Icons.plus_one),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Invite Friends"),
                ]),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Settings")
                  ],
                ),
              ),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ))
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 30,
            ),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: UsersList(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.camera_enhance,
              color: Colors.black,
            ),
            onPressed: () {},
            heroTag: null,
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            child: Icon(Icons.edit),
            onPressed: () {},
            heroTag: null,
          )
        ],
      ),
    );
  }
}
