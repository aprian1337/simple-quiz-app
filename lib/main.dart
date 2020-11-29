import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      'question': 'Apakah hewan favoritmu?',
      'answer': [
        {'text': 'Kucing', 'score': 20},
        {'text': 'Anjing', 'score': 0},
        {'text': 'Burung', 'score': 0},
        {'text': 'Kuda', 'score': 0}
      ]
    },
    {
      'question': 'Tahun berapa AREMA berdiri??',
      'answer': [
        {'text': '1982', 'score': 0},
        {'text': '1987', 'score': 20},
        {'text': '1992', 'score': 0},
        {'text': 'Bakso', 'score': 0}
      ]
    },
    {
      'question': 'Kepanjangan dari UMM?',
      'answer': [
        {'text': 'Universitas Muhammadiyah Malang', 'score': 20},
        {'text': 'Universitas Munggah Mudun', 'score': 0},
        {'text': 'Universitas Makan Makan', 'score': 0},
        {'text': 'Universitas Mudun Munggah', 'score': 0}
      ]
    },
    {
      'question': 'Lapis malang terenak?',
      'answer': [
        {'text': 'Lapis Tirto', 'score': 0},
        {'text': 'Lapis Dau', 'score': 0},
        {'text': 'Lapis Dermo', 'score': 0},
        {'text': 'Lapis Tugu Malang', 'score': 20}
      ]
    },
    {
      'question': 'Lalapan yang ngangenin?',
      'answer': [
        {'text': 'Lalapan Kalasan Agung', 'score': 20},
        {'text': 'Lalapan Bengkel', 'score': 20},
        {'text': 'Lalapan Kak Rose', 'score': 0},
        {'text': 'Lalapan Tirta', 'score': 0}
      ]
    },
  ];

  void _answerQuestion(int total) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += total;
    print(_totalScore);
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
    });
    _totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: _questionIndex != questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions,
                  )
                : Result(_totalScore, _resetQuestion)));
  }
}
