import 'package:flutter/material.dart';
import 'package:master_card_ui/widgets/data.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                "Monthly Expenses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                width: 70,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.chevron_left),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primarycolor,
                      boxShadow: customShadow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: expenses
                  .map((e) => Row(
                        children: [
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: pieColor[expenses.indexOf(e)],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              e["name"],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
