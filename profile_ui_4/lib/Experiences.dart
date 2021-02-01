import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  final String heading;
  final String subheading;
  const Experiences({
    Key key,
    this.heading,
    this.subheading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.black54,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Text(
                subheading,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
