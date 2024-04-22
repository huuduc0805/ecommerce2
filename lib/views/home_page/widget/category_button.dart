import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  String textButton;
  bool isPressed;
  VoidCallback onTap;

  CategoryButton({
    super.key,
    required this.textButton,
    this.isPressed = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            left: 16.sp, right: 16.sp, top: 10.sp, bottom: 10.sp),
        margin: EdgeInsets.only(left: 30.sp, top: 25.sp, bottom: 29.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.sp),
          color: isPressed ? AppColors.primaryColor : AppColors.unSelectedColor,
        ),
        child: Text(
          textButton,
          style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: isPressed ? Colors.white : AppColors.unSelectedTextColor),
        ),
      ),
    );
  }
}
