import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function handler;
  final Map<String, Object> question;

  Quiz(
    this.handler,
    this.question,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question['questionText'],
        ),
        ...(question['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => handler(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
