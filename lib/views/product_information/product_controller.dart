import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/home_page/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  CartService cartService = Get.find();
  final productDetails = Rxn<ProductInfor>();
  RxString currentTabSize = ''.obs;
  Rx<Color> currentTabColor = Colors.transparent.obs;

  @override
  void onInit() {
    // get productDetails từ trang home
    productDetails.value = Get.arguments as ProductInfor;
    super.onInit();
  }

  void onChangedSize(String tabKey) {
    currentTabSize.value = tabKey;
    if (productDetails.value != null) {
      productDetails.value!.size = tabKey;
    }
  }

  void onChangedColor(Color tabKey) {
    currentTabColor.value = tabKey;
    if (productDetails.value != null) {
      productDetails.value!.colors = tabKey;
    }
  }

  void addProduct() {
    if (currentTabSize.value == '' ||
        currentTabColor.value == Colors.transparent) {
      // show message
      return;
    }

    if (productDetails.value != null) {
      cartService.onAddProduct(productDetails.value!);
    }
  }
}
