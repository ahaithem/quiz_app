import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result({required this.resultScore, required this.resetHandler});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
          ),
          Text(
            'Score: $resultScore', // Convert int to String
            style: TextStyle(fontSize: 20),
          ),
          TextButton(
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz',
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue)))
        ],
      ),
    );
  }
}
