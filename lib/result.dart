import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultscore <= 8) {
      print(resultscore);
      resultText = 'You are Awesome';
    } else if (resultscore <= 12) {
      print(resultscore);
      resultText = 'Preety Likeable';
    } else if (resultscore <= 16) {
      print(resultscore);
      resultText = 'You are strange....!';
    } else {
      print(resultscore);
      resultText = 'You are Bad!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!'),
              textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
