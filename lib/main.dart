import 'package:flutter/material.dart';

import 'answer.dart';
import 'questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answer Chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "questionText":"What's your favorite color!",
        "answers":['Red','Blue','Green','Orange']
      },
      {
        "questionText":"What's your favorite animal!",
        "answers":['cat','rabbit','dog','bird']
      },{
        "questionText":"What's your favorite car!",
        "answers":['nissan','bmw','oudi','totyota']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(_questions[_questionIndex]['questionText']),
          ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
