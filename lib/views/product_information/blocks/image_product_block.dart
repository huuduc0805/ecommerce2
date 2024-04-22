import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ImageProductBlock extends GetView<ProductController> {
  ImageProductBlock({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    var product = controller.products_copy;
    product.thumbnail = homeController.product.thumbnail;
    return SizedBox(
      width: double.infinity,
      height: 413.sp,
      child: Image.network(
        product.thumbnail!,
        alignment: Alignment.center,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
