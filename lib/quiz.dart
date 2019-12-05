import 'package:flutter/material.dart';
import 'package:flutter_first/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestions;
  final _questions;
  final _questionIndex;

  Quiz (this._answerQuestions,this._questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          _questions[_questionIndex]['questionText'],
        ),
        ...(_questions[_questionIndex]['answers'] as List<Map< String, Object>>)
            .map((answer) {
          return Answer(()=>_answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
