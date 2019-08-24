import 'package:flutter/material.dart';

import '../widgets/question.dart';
import '../widgets/answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function updateQuestion;
  Quiz(this.question, this.updateQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.question['text']),
        ...(this.question['answers'] as List).map((answer) => Answer(
              () => this.updateQuestion(answer['score']),
              answer,
            )),
      ],
    );
  }
}
