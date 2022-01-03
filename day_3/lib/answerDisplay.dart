import 'package:flutter/material.dart';

class AnswerDiplay extends StatelessWidget {
  String answerText;
  AnswerDiplay(this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      child: (Text(
        answerText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28.0),
      )),
    );
  }
}
