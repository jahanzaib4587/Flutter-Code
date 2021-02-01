import 'dart:ui';

import 'package:flutter/material.dart';

import 'data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 270,
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/mastercardlogo.png"),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              borderRadius: BorderRadius.circular(17),
              boxShadow: customShadow,
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        "**** **** **** ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("6487",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                    ],
                  ),
                  Text(
                    "PLATINUM CARD",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
