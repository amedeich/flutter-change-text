import 'package:flutter/material.dart';

import './text-output.dart';
import './change-text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var someText = "some text";

  void changeText(String text) {
    setState(() {
      someText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task 1!"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ChangeText(changeTextHandler: () => this.changeText('new text')),
              TextOutput(text: this.someText),
            ]),
      ),
    );
  }
}
