import 'package:e_shopping/models/prodcuts.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hand made Bag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(products.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                    text: "\$${products.price}",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ])),
              SizedBox(
                width: 40,
              ),
              Image.asset(products.image),
            ],
          )
        ],
      ),
    );
  }
}
