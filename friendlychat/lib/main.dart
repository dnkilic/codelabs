// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Friendlychat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChatScreen());
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: 'Send a message',
                hintStyle: TextStyle(color: Colors.grey[600])),
            maxLines: 1,
          ),

          IconButton(icon: Icon(Icons.send), onPressed: () { print(""); })
        ],
      ),
      appBar: AppBar(
        title: Text('Friendlychat'),
      ),
    );
  }
}
