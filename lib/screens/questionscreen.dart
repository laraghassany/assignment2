import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalitytest/models/personalitytype.dart';
import 'package:personalitytest/models/questions.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(Personalitytype personalitytype) onAnswerSelected;
  QuestionScreen({required this.question, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 159, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.text,
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...question.answers.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () => onAnswerSelected(answer.personalitytype),
                  style: ElevatedButton.styleFrom(),
                  child: Text(answer.text),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
