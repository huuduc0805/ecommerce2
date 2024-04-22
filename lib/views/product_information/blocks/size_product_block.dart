import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:ecommerce_app_2/views/product_information/widget/size_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeProductBlock extends GetView<ProductController> {
  const SizeProductBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textProduct),
          ),
          Obx(
            () => Row(
              children: [
                SizeButton(
                  textButton: 'S',
                  isPressed: controller.currentTabSize.value == 'S',
                  onTap: () => controller.onChangedTab('S'),
                ),
                SizeButton(
                  textButton: 'M',
                  isPressed: controller.currentTabSize.value == 'M',
                  onTap: () => controller.onChangedTab('M'),
                ),
                SizeButton(
                  textButton: 'L',
                  isPressed: controller.currentTabSize.value == 'L',
                  onTap: () => controller.onChangedTab('L'),
                ),
                SizeButton(
                  textButton: 'XL',
                  isPressed: controller.currentTabSize.value == 'XL',
                  onTap: () => controller.onChangedTab('XL'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
