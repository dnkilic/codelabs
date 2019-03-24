// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final ThemeData kIOSTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light);

final kDefaultTheme = ThemeData(
    primarySwatch: Colors.purple, accentColor: Colors.orangeAccent[400]);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendlychat',
      home: ChatScreen(),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
          title: Text('Friendlychat'),
        ),
        body: Container(
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey[400])))
              : null,
          child: Column(children: <Widget>[
            Flexible(
              child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (_, int index) => _messages[index]),
            ),
            Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: IconTheme(
                  child: _buildTextComposer(),
                  data: IconThemeData(color: Theme.of(context).accentColor)),
            )
          ]),
        ));
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              onChanged: (String text) {
                setState(() {
                  _isComposing = text.length > 0;
                });
              },
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(hintText: "Send a message"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: Theme.of(context).platform == TargetPlatform.iOS
                ? CupertinoButton(
                    child: Text('Send'),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textController.text)
                        : null,
                  )
                : IconButton(
                    icon: Icon(Icons.send),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textController.text)
                        : null,
                  ),
          )
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });

    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
          duration: Duration(milliseconds: 700), vsync: this),
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}

const String _name = "Dogan Kilic";

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key key, this.text, this.animationController})
      : super(key: key);
  final AnimationController animationController;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor:
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text(_name[0]),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _name,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
