import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';

import 'Question.dart';

void main() {
  // runAPP build the main widget and call build() on it
  runApp(MyApp());
}

/*
* if function has only one expression we can use arrow syntax for that function
* for example above main function write as below
* void main => runApp(MyApp());
* */

/*
* Scaffold gives mobile view to widget
* */

/**
 * when the external data changes this class can recreate
 * when the question index change this will retrieve new state to trigger
 * */
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

/**
 * _ used to make private properties
 * because need to protect state that can not access for outside class
 * */
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // this setState method re-render the UI when this executed
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    var quetions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Question App"),
        ),
        body: Column(children: [
          Question(quetions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          /*RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
          RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen")),
          RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("answer 3 chosen");
              }),*/
        ]),
      ),
    );

    /* return const MaterialApp(
      home: Text(
          "My App"), // this home is a named argument of MaterialApp constructor
    );*/
  }
}
