import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/product_information/product_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ImageProductBlock extends GetView<ProductController> {
  const ImageProductBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductInfor? productDetails = controller.productDetails.value;
    final String thumbnail = productDetails?.thumbnail ?? '';

    return SizedBox(
      width: double.infinity,
      height: 413.sp,
      child: Image.network(
        productDetails!.thumbnail!,
        alignment: Alignment.center,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
