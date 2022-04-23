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
    var quetions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];

    void answerQuestion() {
      print("answer pressed");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Column(children: [
          Text("The quetions"),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
        ]),
      ),
    );

    /* return const MaterialApp(
      home: Text(
          "My App"), // this home is a named argument of MaterialApp constructor
    );*/
  }
}
