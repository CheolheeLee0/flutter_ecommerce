import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/constraints.dart';
import 'package:flutter_chat/models/Product.dart';
import 'package:flutter_chat/screens/details/components/add_to_cart.dart';
import 'package:flutter_chat/screens/details/components/card_counter.dart';
import 'package:flutter_chat/screens/details/components/color_and_size.dart';
import 'package:flutter_chat/screens/details/components/counter_with_fav_btn.dart';
import 'package:flutter_chat/screens/details/components/description.dart';
import 'package:flutter_chat/screens/details/components/product_title_with_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

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
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
