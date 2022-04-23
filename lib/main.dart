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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Text("Body here"),
      ),
    );

    /* return const MaterialApp(
      home: Text(
          "My App"), // this home is a named argument of MaterialApp constructor
    );*/
  }
}
