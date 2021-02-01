import 'package:flutter/material.dart';
import 'package:master_card_ui/widgets/data.dart';

class CardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Jahanzaib\'s Wallet",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primarycolor,
              shape: BoxShape.circle,
              boxShadow: customShadow,
            ),
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(7),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    shape: BoxShape.circle,
                  ),
                ),
                Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
