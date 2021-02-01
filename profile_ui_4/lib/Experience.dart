import 'package:flutter/material.dart';

import 'Experiences.dart';

class HeadingExperience extends StatelessWidget {
  final String heading;
  const HeadingExperience({
    Key key,
    this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
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
          Experiences(
            heading: "IT HUB",
            subheading: "WordPress Dveloper (2010-2012)",
          ),
          SizedBox(
            height: 10,
          ),
          Experiences(
            heading: "SPARCO",
            subheading: "Web Dveloper (2012-2014)",
          ),
          SizedBox(
            height: 10,
          ),
          Experiences(
            heading: "NetSol",
            subheading: "Flutter Developer (2014-2016)",
          ),
          SizedBox(
            height: 10,
          ),
          Experiences(
            heading: "TechAbout",
            subheading: "Mern-Stack (2016-Continue)",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
