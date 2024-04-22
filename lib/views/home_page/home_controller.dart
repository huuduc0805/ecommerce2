// ignore_for_file: invalid_use_of_protected_member
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString currentTab = 'Trending Now'.obs;

  void onChangedTab(String tabKey) {
    currentTab.value = tabKey;
  }
}
