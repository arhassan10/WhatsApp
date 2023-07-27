import 'package:flutter/material.dart';
import 'package:whatsapp/models/Chat_ model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        dummyData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dummyData[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: new Text(
                      dummyData[i].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                )
              ],
            ));
  }
}
