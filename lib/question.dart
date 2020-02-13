import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); //Constructor , short hand funtion

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,    //To wrap the container to full width of screen
      margin: EdgeInsets.all(8), //for margins
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
