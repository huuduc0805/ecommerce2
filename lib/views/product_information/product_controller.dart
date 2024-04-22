import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/home_page/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ProductInfor products_copy = ProductInfor();
  CartService cartService = Get.find();
  RxString currentTabSize = ''.obs;
  Rx<Color> currentTabColor = Colors.transparent.obs;

  void onChangedTab(String tabKey) {
    currentTabSize.value = tabKey;
  }

  void onChangedTabColor(Color tabKey) {
    currentTabColor.value = tabKey;
  }

  void addProduct() {
    products_copy.size = currentTabSize.value;
    products_copy.colors = currentTabColor.value;
    // ignore: invalid_use_of_protected_member
    cartService.productCart.value.add(products_copy);
    cartService.total.value += products_copy.cost!;
  }
}
