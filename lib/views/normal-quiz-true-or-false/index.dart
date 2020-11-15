import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterMobile/views/normal-quiz-true-or-false/data/questions.dart';
import 'package:flutterMobile/views/normal-quiz-true-or-false/widgets/normal_quiz_appbar.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;

  List questions = [
    Questions.name(
        questionText: "Is Ko Moon-yeong is a girl?", isCorrect: true),
    Questions.name(
        questionText: "Is Moon Sang-tae the protagonist of the story?",
        isCorrect: false),
    Questions.name(
        questionText: "Is Moon Sang-tae and Ko Moon-yeong siblings?",
        isCorrect: false),
    Questions.name(questionText: "Is Moon Gang-tae a girl?", isCorrect: false),
  ];

  _answer(bool answer) {
    if (answer == questions[_questionIndex].isCorrect) {
      final snackbar = SnackBar(
        content: Text("Answer is correct"),
        backgroundColor: Colors.green,
        duration: Duration(milliseconds: 500),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      setState(() {
        _questionIndex += 1;
      });
      //Scaffold.of(context).showS
    } else {
      final snackbar = SnackBar(
        content: Text("Answer is wrong"),
        backgroundColor: Colors.redAccent,
        duration: Duration(milliseconds: 500),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _prevQuestion() {
    setState(() {
      _questionIndex -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NormalQuizAppBar(),
        backgroundColor: Colors.redAccent,
        actions: [
          Icon(Icons.notifications_none_outlined),
          Icon(Icons.settings),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("images/temp.jpg"),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    questions[_questionIndex].questionText,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
              onPressed: _prevQuestion,
            ),
            TextButton(
              child: Text(
                "True",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              onPressed: () => _answer(true),
            ),
            TextButton(
              child: Text("False",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300)),
              onPressed: () => _answer(false),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              onPressed: _nextQuestion,
            )
          ],
        ),
      ),
    );
  }
}
