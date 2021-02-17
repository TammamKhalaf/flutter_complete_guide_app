import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_app/result.dart';

import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What's your favorite color!",
      "answers": [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 7},
        {'text': 'Orange', 'score': 5},
      ]
    },
    {
      "questionText": "What's your favorite animal!",
      "answers": [
        {'text': 'cat', 'score': 1},
        {'text': 'rabbit', 'score': 1},
        {'text': 'dog', 'score': 1},
        {'text': 'bird', 'score': 1},
      ]
    },
    {
      "questionText": "What's your favorite car!",
      "answers": [
        {'text': 'nissan', 'score': 1},
        {'text': 'bmw', 'score': 1},
        {'text': 'oudi', 'score': 1},
        {'text': 'toyota', 'score': 1},
      ]
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  void _resetQuiz(){
    setState(() {

      _questionIndex = 0;
      _totalScore = 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
