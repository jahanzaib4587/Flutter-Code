import 'package:flutter/material.dart';

class SkillsRowBuilder extends StatelessWidget {
  final String name;
  final double val;
  const SkillsRowBuilder({
    Key key,
    this.name,
    this.val,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              name.toUpperCase(),
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.left,
            )),
        Expanded(
            flex: 4,
            child: LinearProgressIndicator(
              value: val,
              valueColor: AlwaysStoppedAnimation(Colors.blue[900]),
              backgroundColor: Colors.red,
            ))
      ],
    );
  }
}
