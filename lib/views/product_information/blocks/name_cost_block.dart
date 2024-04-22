import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NameCostBlock extends GetView<ProductController> {
  NameCostBlock({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    var product = controller.products_copy;
    product.cost = homeController.product.cost;
    product.name = homeController.product.name;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 14.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            product.name!,
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textProduct),
          ),
          Text(
            '\$${product.cost}',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.costProductColor),
          ),
        ],
      ),
    );
  }
}
