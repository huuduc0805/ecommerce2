import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:ecommerce_app_2/views/product_information/widget/choose_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseColorBlock extends GetView<ProductController> {
  const ChooseColorBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colors',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textProduct),
          ),
          Obx(
            () => Row(
              children: [
                ChooseColorButton(
                  productColor: AppColors.color1,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color1,
                  onTap: () => controller.onChangedTabColor(AppColors.color1),
                ),
                ChooseColorButton(
                  productColor: AppColors.color2,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color2,
                  onTap: () => controller.onChangedTabColor(AppColors.color2),
                ),
                ChooseColorButton(
                  productColor: AppColors.color3,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color3,
                  onTap: () => controller.onChangedTabColor(AppColors.color3),
                ),
                ChooseColorButton(
                  productColor: AppColors.color4,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color4,
                  onTap: () => controller.onChangedTabColor(AppColors.color4),
                ),
                ChooseColorButton(
                  productColor: AppColors.color5,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color5,
                  onTap: () => controller.onChangedTabColor(AppColors.color5),
                ),
                ChooseColorButton(
                  productColor: AppColors.color6,
                  isPressed:
                      controller.currentTabColor.value == AppColors.color6,
                  onTap: () => controller.onChangedTabColor(AppColors.color6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
