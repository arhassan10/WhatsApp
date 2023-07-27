import 'package:flutter/material.dart';
import 'package:whatsapp/pages/Call_Screen.dart';
import 'package:whatsapp/pages/Camera_Screen.dart';
import 'package:whatsapp/pages/Chat_Screen.dart';
import 'package:whatsapp/pages/Status_Screens.dart';

class whatsapphome extends StatefulWidget {
  const whatsapphome({super.key});

  @override
  State<whatsapphome> createState() => _whatsapphomeState();
}

class _whatsapphomeState extends State<whatsapphome>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("WhatsApp"),
          elevation: 0.7,
          backgroundColor: new Color(0xff075E54),
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                text: "Chats",
              ),
              new Tab(
                text: "Status",
              ),
              new Tab(
                text: "Calls",
              )
            ],
          ),
          actions: <Widget>[
            new Icon(Icons.search),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
            new Icon(Icons.more_vert)
          ]),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => print("Open Chats"),
        backgroundColor: new Color(0xff075E54),
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
