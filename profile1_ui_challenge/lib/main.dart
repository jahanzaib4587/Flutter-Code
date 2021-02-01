import 'package:flutter/material.dart';
import 'package:profile1_ui_challenge/profileboxes.dart';

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
          title: Text(
            "View Profile",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          leading: Icon(
            Icons.arrow_back,
          ),
          elevation: 10,
          backgroundColor: Colors.deepOrange[500],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
          ),
          child: Column(
            children: [
              ProfileBoxes(),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    height: 47,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Email",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        Text(
                          "Jahanaib4587@gmail.com",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 45,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Phone",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        Text(
                          "+92 3487414542",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 47,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Twtter",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        Text(
                          "@jahanzaib4587",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 47,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "FaceBook",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        Text(
                          "facebook.com/Jahanaib4587",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
