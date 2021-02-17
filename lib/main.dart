import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

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
      "What's your favorite color!",
      "What's your favorite animal!",
      "What's your favorite car!"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(_questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
