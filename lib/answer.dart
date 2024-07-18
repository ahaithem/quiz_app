import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer({required this.selectHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // background (button) color
              foregroundColor: Colors.white, // foreground (text) color
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              // shadow elevation
            ),
            onPressed: selectHandler,
            child: Text(answerText),
          ),
        ),
        SizedBox(height: 20), // Add space after each button
      ],
    );
  }
}
