import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * this class make as stateless because this does not has any view modification logic
 * the onPress logic happens in another Widget
 * */
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  const Answer(this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: const Text("Answer 1"),
        onPressed: selectHandler,
      ),
    );
  }
}
