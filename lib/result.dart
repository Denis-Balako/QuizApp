import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhrase {
    String resultText = 'You did it!';
    if (this.resultScore < 4) {
      resultText = 'You\'re awesome and innocent!';
    } else if (this.resultScore < 10) {
      resultText = 'You\'re good!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
