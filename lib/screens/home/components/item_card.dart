import 'package:flutter/material.dart';
import 'package:flutter_chat/constraints.dart';
import 'package:flutter_chat/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            // temp width & height
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}