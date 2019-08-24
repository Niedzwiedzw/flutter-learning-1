import 'package:flutter/material.dart';
import './widgets/result.dart';
import './widgets/quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var selectedQuestion = 0;
  var totalScore = 0;
  final questions = const [
    {
      "text": "What's your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1},
      ]
    },
    {
      "text": "What's your favorite animal?",
      "answers": [
        {'text': 'Lion', 'score': 10},
        {'text': 'Zebra', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Elephant', 'score': 1},
      ]
    },
    {
      "text": "Who's your favorite instructor?",
      "answers": [
        {'text': 'Max', 'score': 0},
        {'text': 'Max', 'score': 0},
        {'text': 'Max', 'score': 0},
        {'text': 'Max', 'score': 0},
      ]
    },
  ];

  get currentQuestion => this.questions[this.selectedQuestion];

  bool get questionsLeft => this.selectedQuestion < this.questions.length;

  void updateQuestion(int score) {
    this.setState(() {
      this.selectedQuestion += 1;
      this.totalScore += score;
    });
  }

  void resetQuiz() {
    this.setState(() {
        this.totalScore = 0;
        this.selectedQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: this.questionsLeft
            ? Quiz(
          this.currentQuestion,
          this.updateQuestion,
        )
            : Result(this.totalScore, this.resetQuiz),
      ),
    );
  }
}
