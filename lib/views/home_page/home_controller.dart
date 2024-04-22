// ignore_for_file: invalid_use_of_protected_member

import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString currentTab = 'Trending Now'.obs;
  ProductInfor product = ProductInfor();

  void onChangedTab(String tabKey) {
    currentTab.value = tabKey;
  }
}
