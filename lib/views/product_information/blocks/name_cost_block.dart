import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NameCostBlock extends GetView<ProductController> {
  NameCostBlock({super.key});
  @override
  Widget build(BuildContext context) {
    final ProductInfor? productDetails = controller.productDetails.value;
    final double cost = productDetails?.cost ?? 0;
    final String name = productDetails?.name ?? 'N/A';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 14.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textProduct,
            ),
          ),
          Text(
            '\$$cost',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.costProductColor,
            ),
          ),
        ],
      ),
    );
  }
}
