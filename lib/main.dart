import 'package:flutter/material.dart';
import './answer.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Elliot', 'Tim', 'Andrei'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print('Answer chosen!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('The App'),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText'] as String),
                ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
        )
    );
  }
}
