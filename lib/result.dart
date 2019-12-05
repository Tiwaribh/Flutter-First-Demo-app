import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function _resetQuiz;

  Result(this.result, this._resetQuiz);

  String get resultPharse {
    var resultText = 'You did it';

    if (result <= 8) {
      resultText = 'Average marks good luck.';
    } else if (result <= 12) {
      resultText = 'Excellent, We appreciate your efforts.';
    } else {
      resultText = 'Poor performance! try to improve.';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Reset Quiz'),
        onPressed: _resetQuiz,
      )
    ]));
  }
}
