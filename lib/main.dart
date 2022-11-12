import 'package:flutter/material.dart';
import './question.dart';
import './ansswer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questiontext': 'How are you doing?',
      'answers': ['Good', 'Great', 'Awesome!', 'Okay']
    },
    {
      'questiontext': 'What\'s is your favourite color?',
      'answers': ['Red', 'Blue', 'Green', 'white']
    },
    {
      'questiontext': 'Who is your favourite Singer?',
      'answers': ['SPB', 'TS', 'AR', 'SG']
    },
    {
      'questiontext': 'What\'s your favourite Sweet',
      'answers': ['Gamun', 'Baklava', 'Pastry', 'Cham Cham']
    },
  ];
  var _a = 0;

  void _answerQuestions() {
    //var aBool = true;

    setState(() {
      _a++;
    });

    print(_a);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Personal Quiz"),
          ),
          body: _a < questions.length
              ? Column(
                  children: <Widget>[
                    Question(questions[_a]['questiontext']),
                    ...(questions[_a]['answers'] as List<String>).map((answer) {
                      return Answer(_answerQuestions, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text('Done!'),
                )),
    );
  }
}
