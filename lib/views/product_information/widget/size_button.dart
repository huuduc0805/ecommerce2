import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButton extends StatelessWidget {
  String textButton;
  bool isPressed;
  VoidCallback onTap;
  SizeButton({
    super.key,
    required this.textButton,
    this.isPressed = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: onTap,
          child: Text(
            textButton,
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: isPressed ? AppColors.likeColor : AppColors.textProduct,
            ),
          ),
        ),
      ],
    );
  }
}
