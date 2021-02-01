import 'package:flutter/material.dart';
import 'package:master_card_ui/widgets/CardLayout.dart';
import 'package:master_card_ui/widgets/ExpenseSection.dart';
import 'package:master_card_ui/widgets/cardheader.dart';
import 'package:master_card_ui/widgets/data.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: CardHeader(),
          ),
          Expanded(child: CardLayout()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
