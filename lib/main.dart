import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favourite color?',
      'Who is your favourite actor?',
      'What\'s your favourite Sweert'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Quiz"),
        ),
        body: Column(
          children: <Widget>[
            Text('Quick Questions'),
            ElevatedButton(
              child: Text('Text 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Text 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Text 3'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Text 4'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
