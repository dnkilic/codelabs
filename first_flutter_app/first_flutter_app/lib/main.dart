import 'package:first_flutter_app/random_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      title: 'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}
