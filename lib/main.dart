import 'package:flutter/material.dart';

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;

    var quetions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];

    void answerQuestion() {
      questionIndex++;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Question App"),
        ),
        body: Column(children: [
          Text(quetions.elementAt(questionIndex)),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen")),
          RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("answer 3 chosen");
              }),
        ]),
      ),
    );

    /* return const MaterialApp(
      home: Text(
          "My App"), // this home is a named argument of MaterialApp constructor
    );*/
  }
}
