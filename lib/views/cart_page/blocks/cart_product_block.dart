import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/contstants/app_images.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartProductBlock extends StatelessWidget {
  const CartProductBlock({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.find();
    return Obx(
      () => SizedBox(
        height: 350.sp,
        width: 4200.sp,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          shrinkWrap: true,
          itemCount: productController.cartService.productCart.length,
          itemBuilder: (context, index) {
            // ignore: invalid_use_of_protected_member
            var product = productController.cartService.productCart[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 300.sp,
                height: 100.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(11.sp),
                      child: Image.network(
                        product.thumbnail!,
                        height: 125.sp,
                        width: 85.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name!,
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textProduct),
                        ),
                        Text(
                          '\$${product.cost!}',
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.cartCost,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 32.sp,
                              height: 32.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: product.colors,
                              ),
                            ),
                            SizedBox(
                              width: 21.sp,
                            ),
                            Text(
                              product.size!,
                              style: GoogleFonts.poppins(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textProduct),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.sp,
                    ),
                    GestureDetector(
                      onTap: () =>
                          productController.cartService.deleteItem(index),
                      child: const Image(
                        image: AssetImage(AppImage.imgDelete),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
