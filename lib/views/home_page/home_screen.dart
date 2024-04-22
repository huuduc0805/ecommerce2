import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/views/home_page/blocks/app_bar_block.dart';
import 'package:ecommerce_app_2/views/home_page/blocks/list_product_block.dart';
import 'package:ecommerce_app_2/views/home_page/blocks/search_category_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: AppColors.backGroundColor,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 157.sp,
          titleSpacing: 21.sp,
          backgroundColor: Colors.transparent,
          title: const AppBarBlock(),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 147.sp,
                floating: true,
                snap: true,
                flexibleSpace: const SearchCategoryBlock(),
                centerTitle: true,
                elevation: 0.0,
              ),
            ];
          },
          body: ListProductBlock(),
        ),
      ),
    );
  }
}
