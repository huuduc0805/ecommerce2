import 'package:ecommerce_app_2/views/cart_page/add_to_cart.dart';
import 'package:ecommerce_app_2/views/home_page/home_binding.dart';
import 'package:ecommerce_app_2/views/home_page/home_screen.dart';
import 'package:ecommerce_app_2/views/product_information/product_binding.dart';
import 'package:ecommerce_app_2/views/product_information/product_inform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ecomerce app 2',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          getPages: [
            GetPage(
              name: '/',
              page: () => HomeScreen(),
              binding: HomeBinding(),
            ),
            GetPage(
              name: '/product_infor',
              page: () => ProductInform(),
              binding: ProductBinding(),
            ),
            GetPage(
              name: '/cart_page',
              page: () => AddToCart(),
              binding: HomeBinding(),
            ),
          ],
        );
      },
    );
  }
}
