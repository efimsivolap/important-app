import 'package:academy/answer.dart';
import 'package:academy/question.dart';
import 'package:academy/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Кто ты?',
      'answers': [
        {'text': 'Животное', 'score': 10},
        {'text': 'Человек', 'score': 5},
        {'text': 'Душа', 'score': 1}
      ],
    },
    {
      'questionText': 'Зачем ты живёшь?',
      'answers': [
        {'text': 'Есть, спать, рожать', 'score': 10},
        {'text': 'Любить, творить, созидать', 'score': 1},
      ],
    },
    {
      'questionText': 'Откуда ты?',
      'answers': [
        {'text': 'Нет ответа', 'score': 10},
        {'text': 'С космоса', 'score': 6},
        {'text': 'Из мамы', 'score': 8},
        {'text': 'Я всегда был', 'score': 1}
      ],
    },
    {
      'questionText': 'Что ты видишь вокруг?',
      'answers': [
        {'text': 'Страх и ненависть', 'score': 10},
        {'text': 'Небо голубое и красивые птицы', 'score': 5},
        {'text': 'Вижу везде себя', 'score': 1}
      ],
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'важное',
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
