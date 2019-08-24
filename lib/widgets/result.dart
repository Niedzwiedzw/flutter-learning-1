import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text('You did it! Your score is ${this.totalScore}!'),
            FlatButton(
              child: Text('Restart Quiz'),
              onPressed: this.resetQuiz,
            )
      ],
    ));
  }
}
