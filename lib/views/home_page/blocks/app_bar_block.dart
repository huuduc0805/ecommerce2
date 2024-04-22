import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/contstants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarBlock extends StatelessWidget {
  const AppBarBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 44.sp,
                width: 44.sp,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Image(
                  image: AssetImage(AppImage.imgList),
                ),
              ),
            ),
            SizedBox(
              width: 270.sp,
            ),
            IconButton(
              onPressed: () {
                Get.toNamed('/cart_page');
              },
              icon: Icon(Icons.shopping_cart_outlined),
              color: AppColors.primaryColor,
            ),
          ],
        ),
        SizedBox(
          height: 40.sp,
        ),
        Text(
          'Match Your Style',
          style: GoogleFonts.poppins(
              fontSize: 28.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ],
    );
  }
}
