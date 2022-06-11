import 'package:flutter/material.dart';
import './answerDisplay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQestion() {
    setState(() {
      if (questionIndex < 2) {
        questionIndex++;
      } else {
        questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'What is your favorate color?',
      'Where do you live?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnswerDiplay(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQestion,
              child: const Text('Answer 1'),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: answerQestion,
              child: const Text('Answer 2'),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: answerQestion,
              child: const Text('Answer 3'),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
