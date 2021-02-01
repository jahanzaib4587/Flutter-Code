import 'package:e_shopping/Details/productTitle.dart';
import 'package:e_shopping/models/prodcuts.dart';
import 'package:flutter/material.dart';

import 'Color&Size.dart';
import 'CounterWithButton.dart';
import 'bottomoptions.dart';

import 'description.dart';

class Body1 extends StatelessWidget {
  final Product products;

  const Body1({Key key, this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorandSize(products: products),
                      Description(products: products),
                      CounterWithbutton(),
                      BottomOptions(products: products)
                    ],
                  ),
                ),
                ProductTitle(products: products),
              ],
            ),
          )
        ],
      ),
    );
  }
}
