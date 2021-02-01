import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  final String email;
  final String phone;
  const Contact({
    Key key,
    this.email,
    this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "CONTACT",
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 1,
        color: Colors.grey[500],
      ),
      SizedBox(
        height: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.email),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  email,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.phone),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  phone,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue[900],
                  size: 30,
                ),
                Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                  size: 30,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue[900],
                  size: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )
    ]));
  }
}
