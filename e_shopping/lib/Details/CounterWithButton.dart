import 'package:flutter/material.dart';

import 'cart_Counter.dart';

class CounterWithbutton extends StatelessWidget {
  const CounterWithbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.red[600],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.grade,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
