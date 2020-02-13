import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your fav color?',
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your fav animal?',
      'answerText': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 1},
        {'text': 'Lion', 'score': 10},
        {'text': 'Bear', 'score': 3}
      ]
    },
    {
      'questionText': 'Who is your fav Super Hero?',
      'answerText': [
        {'text': 'Iron Man', 'score': 5},
        {'text': 'Deadpool', 'score': 10},
        {'text': 'Captian America', 'score': 1},
        {'text': 'Black Panther', 'score': 3}
      ]
    }
  ];

  // add underscroe '_' makes a class or funtion or variable private for that class
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex +
          1; //Annonymous function is used here inside setState() method
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Entire pAge
        appBar: AppBar(
          title: Text('Flutter demo App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ), //Scaffold
    ); //MaterialApp
  }
}
