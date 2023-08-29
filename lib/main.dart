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
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
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
                Question(questions[_questionIndex]),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
              ],
            )
        )
    );
  }
}
