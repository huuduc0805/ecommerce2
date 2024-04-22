import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:ecommerce_app_2/views/home_page/widget/category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCategoryBlock extends GetView<HomeController> {
  const SearchCategoryBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 351.sp,
          height: 48.sp,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.sp), color: Colors.white),
          child: TextFormField(
            cursorColor: Colors.black,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.subColor,
              ),
              hintText: 'Search',
              hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                  color: AppColors.subColor),
            ),
          ),
        ),
        Obx(
          () => Row(
            children: [
              CategoryButton(
                textButton: 'Trending Now',
                isPressed: controller.currentTab.value == 'Trending Now',
                onTap: () => controller.onChangedTab('Trending Now'),
              ),
              CategoryButton(
                textButton: 'All',
                isPressed: controller.currentTab.value == 'All',
                onTap: () => controller.onChangedTab('All'),
              ),
              CategoryButton(
                textButton: 'New',
                isPressed: controller.currentTab.value == 'New',
                onTap: () => controller.onChangedTab('New'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
