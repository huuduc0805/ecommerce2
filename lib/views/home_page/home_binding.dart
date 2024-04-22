import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartService());
    Get.lazyPut(() => HomeController());
  }
}

class CartService extends GetxService {
  RxList<ProductInfor> productCart = <ProductInfor>[].obs;

  RxDouble total = 0.0.obs;
  void deleteItem(int index) {
    // ignore: invalid_use_of_protected_member
    total.value -= productCart.value[index].cost!;
    productCart.removeAt(index);
  }
}
