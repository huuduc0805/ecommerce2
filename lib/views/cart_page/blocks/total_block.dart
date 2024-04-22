import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalBlock extends GetView<CartService> {
  const TotalBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.cartCostColor,
                  ),
                ),
                Text(
                  '\$${controller.total.value}',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.totalColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping:',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cartCostColor,
                  ),
                ),
                Text(
                  '\$0.0',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.totalColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.underLine,
            thickness: 1.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.sp, vertical: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total:',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.cartCostColor,
                  ),
                ),
                Text(
                  '\$${controller.total.value}',
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grandTotalColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
