import 'package:e_shopping/models/prodcuts.dart';
import 'package:flutter/material.dart';

class BottomOptions extends StatelessWidget {
  const BottomOptions({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: products.color,
                ),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: products.color,
                  ),
                  onPressed: () {}),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: products.color,
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
