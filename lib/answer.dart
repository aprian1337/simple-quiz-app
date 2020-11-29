import 'package:flutter/material.dart';
class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[800],
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(this.answer),
      ),
    );
  }
}