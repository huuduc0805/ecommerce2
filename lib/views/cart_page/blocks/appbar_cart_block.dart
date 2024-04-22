import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCartBlock extends StatelessWidget {
  const AppBarCartBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 30.sp, top: 25.sp, bottom: 22.sp, right: 32.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 44.sp,
              width: 44.sp,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 24.sp,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Text(
            'My Cart',
            style: GoogleFonts.poppins(
              fontSize: 28.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.offNamedUntil('/', (Route<dynamic> route) => route.isFirst);
            },
            icon: const Icon(
              Icons.home_outlined,
            ),
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
