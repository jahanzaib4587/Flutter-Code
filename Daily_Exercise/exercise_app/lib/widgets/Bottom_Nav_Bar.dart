import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavBar({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(svgSrc),
          Text(
            title,
            style: TextStyle(color: isActive ? Colors.red[200] : Colors.black),
          ),
        ],
      ),
    );
  }
}
