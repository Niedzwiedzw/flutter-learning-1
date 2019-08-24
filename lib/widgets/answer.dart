import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClick;
  final Map<String, Object> answer;
  Answer(this.onClick, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(this.answer['text']),
          onPressed: this.onClick,
        ));
  }
}
