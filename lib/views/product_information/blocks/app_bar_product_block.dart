import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppBarProductBlock extends StatelessWidget {
  const AppBarProductBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.sp,
        top: 25.sp,
        bottom: 22.sp,
        right: 32.sp,
      ),
      child: Row(
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
          SizedBox(
            width: 252.sp,
          ),
          IconButton(
            onPressed: () {
              Get.toNamed('/cart_page');
            },
            icon: const Icon(Icons.shopping_cart_outlined),
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
