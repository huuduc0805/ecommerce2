import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutBlock extends StatelessWidget {
  const CheckOutBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 31.sp),
        child: InkWell(
          onTap: () {
            Get.offAllNamed('/');
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
              'Checkout',
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
