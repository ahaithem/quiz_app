import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  const Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Explicitly cast the questionText to String
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        // You can iterate through answers and create Answer widgets
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestion(answer['score'] as int),
            answerText: answer['text'] as String, // Explicitly cast to String
          );
        }).toList(),
      ],
    );
  }
}
