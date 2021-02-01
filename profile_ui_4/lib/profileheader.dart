import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black54,
                width: 4,
              )),
          child: Image.asset(
            "assets/mypic.png",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "M.Jahanzaiib",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Softwear Developer",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
            Text(
              "Lahore,Pakistan",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
          ],
        )
      ],
    );
  }
}
