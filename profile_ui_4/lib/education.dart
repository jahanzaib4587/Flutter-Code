import 'package:flutter/material.dart';

import 'Experiences.dart';

class HeadingEducation extends StatelessWidget {
  final String heading;
  const HeadingEducation({
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
            heading: "The University of Punjab, Lahore",
            subheading: "BS Computer Scinces (Since 2017)",
          ),
          SizedBox(
            height: 10,
          ),
          Experiences(
            heading: "Barrett Hodgson International College, Toba Tek Singh",
            subheading: "Fsc Pre-Engeneering (2015-2017)",
          ),
          SizedBox(
            height: 10,
          ),
          Experiences(
            heading: "Unique Shiblee Boys Higher Secondary School",
            subheading: "Matriculation (2013-2015)",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
