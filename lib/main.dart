import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print("Answer Choosen");
  }

  @override
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
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Text 2'),
              onPressed: (() {
                print("Hello");
              }),
            ),
            ElevatedButton(
              child: Text('Text 3'),
              onPressed: (() => print("Answer 3")), //Anonymous Function
            ),
            ElevatedButton(
              child: Text('Text 4'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
