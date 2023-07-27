import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapphome.dart';

void main() => runApp(new whatsapp());

class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "whatsapp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
      ),
      debugShowCheckedModeBanner: false,
      home: new whatsapphome(),
    );
  }
}
