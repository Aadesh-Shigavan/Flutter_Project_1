import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;

  Result(this.resultscore);

  String get resultPhrase {
    String resultText;
    if (resultscore <= 8) {
      resultText = 'You are Awesome';
    } else if (resultscore <= 12) {
      resultText = 'Preety Likeable';
    } else if (resultscore <= 16) {
      resultText = 'You are strange....!';
    } else {
      resultText = 'You are Bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
