import 'package:e_shopping/screens/body.dart';
import 'package:flutter/material.dart';
import 'body.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[700],
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey[700],
            ),
            onPressed: () {}),
      ],
    );
  }
}
