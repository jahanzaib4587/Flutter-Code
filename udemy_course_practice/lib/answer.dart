import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function checker;
  final String text;
  final Color color;
  Answer({this.checker, this.color, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: checker,
        child: Text(text),
        textColor: Colors.white,
        color: color,
      ),
    );
  }
}
