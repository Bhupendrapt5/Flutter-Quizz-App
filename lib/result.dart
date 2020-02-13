import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it..!!";
    if (resultScore <= 8) {
      resultText = "You are good, could do better";
    } else if (resultScore <= 16) {
      resultText = "you are likeable";
    } else if (resultScore <= 25) {
      resultText = "nice job";
    } else {
      resultText = "you are Champ";
    }

    return resultText + '\nYou scored : ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(           //flatButton is button without background
              onPressed: resetHandler,
              child: Text(
                  'Restart Quiz..!!'),
                  textColor: Colors.blue,
                  ),
        ],
      ),
    );
  }
}
