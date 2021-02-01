import 'package:flutter/material.dart';

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
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.deepOrange])),
                // height: MediaQuery.of(context).size.height * 0.35,
                // width: double.infinity,
                height: 400,
                width: 400,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
