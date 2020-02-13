import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          //Used Annonymous funtion here
          return Answer(() => answerQuestion(answer['score']), answer['text']);          //One line anonymus function is used
          //answerQuestion is bind with 'answer' RaisedButton onPressed, which takes non-argument function
          // Hence we bind answerQuestion with an anonymous function , by doing so we bind address of answerQuestion to anonymous function
          // whichi is basically a non argumet function
        }).toList()
      ],
    );
  }
}
