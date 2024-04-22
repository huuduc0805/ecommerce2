import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/add_to_cart_button_block.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/app_bar_product_block.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/choose_color_block.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/image_product_block.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/name_cost_block.dart';
import 'package:ecommerce_app_2/views/product_information/blocks/size_product_block.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductInform extends StatelessWidget {
  const ProductInform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: AppColors.backGroundColor,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarProductBlock(),
              ImageProductBlock(),
              NameCostBlock(),
              const SizeProductBlock(),
              ChooseColorBlock(),
              AddToCartBlock(),
            ],
          ),
        ),
      ),
    );
  }
}
