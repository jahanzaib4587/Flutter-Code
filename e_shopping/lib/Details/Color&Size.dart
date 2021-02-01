import 'package:e_shopping/models/prodcuts.dart';
import 'package:flutter/material.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Colordot(
                    color: Colors.blue,
                  ),
                  Colordot(
                    color: Colors.red,
                    isSelelcted: true,
                  ),
                  Colordot(color: Colors.black),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.grey[700],
                ),
                children: [
                  TextSpan(text: "Size\n"),
                  TextSpan(
                    text: "${products.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

class Colordot extends StatelessWidget {
  final Color color;
  final bool isSelelcted;
  const Colordot({
    Key key,
    this.color,
    this.isSelelcted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
        right: 2,
      ),
      padding: EdgeInsets.all(1.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelelcted ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
