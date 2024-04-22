import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartBlock extends GetView<ProductController> {
  AddToCartBlock({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 31.sp),
      child: InkWell(
        onTap: () {
          controller.addProduct();
          Get.toNamed(
            '/cart_page',
            arguments: controller.currentTabColor.value,
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: 352.sp,
          height: 66.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            color: AppColors.primaryColor,
          ),
          child: Text(
            'Add To Cart',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
