import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': 'Q3. Which programming language is used by Flutter?',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Demo'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex)
            : Result(
                resultScore: totalScore,
                resetHandler: resetQuiz,
              ),
      ),
    );
  }
}
