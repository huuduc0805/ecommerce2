import 'package:ecommerce_app_2/views/cart_page/blocks/appbar_cart_block.dart';
import 'package:ecommerce_app_2/views/cart_page/blocks/cart_product_block.dart';
import 'package:ecommerce_app_2/views/cart_page/blocks/check_out.dart';
import 'package:ecommerce_app_2/views/cart_page/blocks/total_block.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarCartBlock(),
            CartProductBlock(),
            TotalBlock(),
            CheckOutBlock(),
          ],
        ),
      ),
    );
  }
}
