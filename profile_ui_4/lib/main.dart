import 'package:flutter/material.dart';
import 'package:profile_ui_4/profileheader.dart';
import 'package:profile_ui_4/skillsrowbuilder.dart';

import 'Contact.dart';
import 'Experience.dart';

import 'education.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.message,
            color: Colors.black54,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileHeader(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  child: Text(
                    "Over 2 years of experience and web development and 4_ years of experience in mobile application development ",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "SKILLS",
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
                SkillsRowBuilder(
                  val: 0.9,
                  name: "HTML/CSS",
                ),
                SizedBox(
                  height: 10,
                ),
                SkillsRowBuilder(
                  val: 0.2,
                  name: "WordPress",
                ),
                SizedBox(
                  height: 10,
                ),
                SkillsRowBuilder(
                  val: 0.7,
                  name: "C++",
                ),
                SizedBox(
                  height: 10,
                ),
                SkillsRowBuilder(
                  val: 0.5,
                  name: "Flutter",
                ),
                SizedBox(
                  height: 40,
                ),
                HeadingExperience(
                  heading: "EXPERIENCE",
                ),
                HeadingEducation(
                  heading: "EDUCATION",
                ),
                SizedBox(
                  height: 10,
                ),
                Contact(
                  email: "Jahanzaib4587@gmail.com",
                  phone: "+92 3487414542",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
