import 'package:flutter/material.dart';

import 'package:udemy_course_practice/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var qindex = 1;

  void answer() {
    setState(() {
      if (qindex < 2) qindex = qindex + 1;
    });
    print(qindex);
  }

  void reset() {
    setState(() {
      qindex = 0;
    });
  }

  void answerp() {
    setState(() {
      if (qindex > 0) qindex = qindex - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What is yoir favourite color?",
        "answer": ["Red", "Black", "Green", "Yellow"],
      },
      {
        "questionText": "What is your favoutite animal?",
        "answer": ["Lion", "Tiger", "Monkey", "Goat"],
      },
      {
        "questionText": "Who is your favoutite person?",
        "answer": ["Quaid", "Allama", "Sir", "worker"],
      }
    ];
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue[200],
        title: Text("My Udemy Course Practice App"),
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Question(questions[qindex]["questionText"]),

            // Answer(
            //   checker: answer,
            //   color: Colors.black,
            //   text: "Next",
            // ),
            // Answer(
            //   checker: answerp,
            //   color: Colors.blue,
            //   text: "Previous",
            // ),
            // Answer(
            //   checker: reset,
            //   color: Colors.purple[200],
            //   text: "Reset",
            // ),
          ],
        ),
      ),
    );
  }
}
