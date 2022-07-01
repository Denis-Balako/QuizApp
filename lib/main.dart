import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Pizza', 'score': 1},
        {'text': 'Buritto', 'score': 3},
        {'text': 'Sushi', 'score': 2},
        {'text': 'Soup', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Football', 'score': 3},
        {'text': 'Valleyball', 'score': 2},
        {'text': 'Golf', 'score': 4},
        {'text': 'Sleep!', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite name?',
      'answers': [
        {'text': 'Max', 'score': 2},
        {'text': 'Denis', 'score': 1},
        {'text': 'Andrew', 'score': 3},
        {'text': 'Roman', 'score': 4},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions[_questionIndex])
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
