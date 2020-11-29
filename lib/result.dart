import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetQuestion;
  Result(this.totalScore, this.resetQuestion);

  String get scoreAlphabet {
    if (totalScore <= 60) {
      return ("C");
    } else if (totalScore <= 80) {
      return ("B");
    } else {
      return ("A");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You got ' + totalScore.toString() + ' points'),
          Text(
            scoreAlphabet,
            style: TextStyle(color: Colors.green, fontSize: 50),
          ),
          RaisedButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: resetQuestion,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
