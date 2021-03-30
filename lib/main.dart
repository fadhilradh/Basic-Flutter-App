import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'Siapa Nabi yang sangat sabar ketika diuji dengan sakit dan kemiskinan?',
        'answers': ['Nabi Ayyub', 'Nabi Daud', 'Nabi Muhammad', 'Nabi Musa']
      },
      {
        'questionText': 'Siapa sahabat yang menyedekahkan setengah hartanya?',
        'answers': ['Abu Bakar RA', 'Umar RA', 'Utsman RA', 'Ali RA']
      },
      {
        'questionText': 'Siapa nama tabi\'in terbaik menurut Rasulullah karena baktinya pada orang tua?',
        'answers': ['Umar bin Abdul Aziz', 'Hasan al Bashri', 'Said ibnu Musayyib', 'Uwais al Qarni']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App !'),
          centerTitle: true,
          backgroundColor: Color(0xff304ffe),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
