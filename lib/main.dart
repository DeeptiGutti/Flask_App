import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _a = 0;

  void _answerQuestions() {
    setState(() {
      _a++;
    });

    print(_a);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favourite color?',
      'Who is your favourite actor?',
      'What\'s your favourite Sweert',
      'How are you doing?',
      'Bye!'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Quiz"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_a]),
            ElevatedButton(
              child: Text("1"),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text("2"),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text('3'),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text('4'),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
