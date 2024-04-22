import 'package:ecommerce_app_2/contstants/app_colors.dart';
import 'package:ecommerce_app_2/contstants/app_images.dart';
import 'package:ecommerce_app_2/models/product_item_model.dart';
import 'package:ecommerce_app_2/views/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

// ignore: must_be_immutable
class ListProductBlock extends GetView<HomeController> {
  ListProductBlock({super.key});
  List<ProductInfor> products = [
    ProductInfor(
      cost: 45.9,
      name: "Jacket Jeans",
      thumbnail:
          'https://s3-alpha-sig.figma.com/img/f9ff/fe3a/6ca5a09485d28fa4aabbe01ce14ff98f?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MyrQH6YBr2lREMhKN1nKM2ShY3melQAVbk9Qc0D0Ba3RC2Hq0Xaq9za~0NnL-4uAiJx35ElvkGRo-Z9PM0NLZMxH2OYw0b2eHDvczYKV~Oc6ksPP26IEFCbYPlFn2vmM6HyfvBBh7sK-xdUJd3Q7MHizqcJWuDi7x0rBKxEmd6hJz6vkymPwDfbLGSmw3kLG9kMTw74RFg8IAm2-05s~gGH5FPHTWb5ySAoQStGDXoeXeAzZuAtHs6Rcj95xPBxKy1rM9IUraIuHNCYGtLDHPDIVXbjGK~PDUgLEHLDU179ZHXZJiKI~iPIEK31Se31IFOPATO~Mq-YzHqKVozsvnw__',
    ),
    ProductInfor(
      cost: 37.9,
      name: "Acrylic Sweater",
      thumbnail:
          'https://s3-alpha-sig.figma.com/img/abc3/c7bf/559d8f306b0f5f37f1eaf72b32da9f2e?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KVhTbqWw4Sd84EnKS93ILGBH8GZOmYktdz-Rl2WAjNmFV0Hxzd-r6HI79~fgDsxz6k7jWZskhQQor5KkxEjvTZr08U9bmNdIyvkbl5~3yWuicyQV8tGJHz1M38RqnF4ikz7fNqb7BXmGCFXd3N3UQdpP6zVCklfMNNc~3~ENR8NKx2yUqdR78ju3Nzqh~jTUwiSF-k97jEUiH6QUnIM0Bv-0qxXOQo37FXY7V3aL4UJDaYfMotzFdhbv5f0S0f4zfLULdhFi2Cg11e2hPuk4IvVZEdqLekQG5fSMZWJAMN~VsRE4JOSfFDJv1swgXx~aBJ3~mLgt9I8tsSTkZhpmHA__',
    ),
    ProductInfor(
      cost: 50.9,
      name: "Rider Jacket",
      thumbnail:
          'https://s3-alpha-sig.figma.com/img/7342/9a1e/2a2b9c82ed89dd5079a6aed5d8caef0c?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eZZkFKGYNA7nHtHTXnsfV6pnDTyAiCcFbq3lHEbbo55qkx-UGrjX3AkwnMU17lS2AnBEY23HGF9XfZUeJcROEhcCUPiy7LUfq~Muy~9ixwXT7g6FtDg2bv2H7IwWIK7ocdsrLYPWoCNP-3D2u2~T8ARH9vGOYbINgmdPjIaseZjEFtEHXn4wZ9Y-R2UkqIJ8OE~v4dzCUiLXERBwuXkOjjaIgqAbrTfP5VtW10KJsYW-ost8GPMBy01QooB5kqxc7DbO6WgzmzDuJ-v3ZaSr2C~IUPbZdthXo4BThD0A03OqB-7aiWUpIiXIeixCYCZLUBxl~pDtFYz2i5m~WCUE7g__',
    ),
    ProductInfor(
      cost: 48.9,
      name: "Winter Coat",
      thumbnail:
          'https://s3-alpha-sig.figma.com/img/c619/1d1f/2ef87431bb9714190324b36b9e18bb8e?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MvMUJ3ayEbU-29XCafTdK4f0l-MCHQEbZdRyUByqEJeF27F~Rof0cCwQv0gFmHQNVHyC76urnS9x9BssZoLAsv2OHd8FKPgOA6k7MntU-GiKJclcxPZNiaLP2tfyOxzE~9tfcuTzKx4ILkvF-hvHwPncrYhKJiXuNmrjzvpcTmjdr6OCcS9nVofQ0ZyUhiz40mK31cqhm87PDXhPG4oJX~kbCyVr0u17qqe0brsrLmjdakG0TGY86srghx~rA~DxxjS0uEUMyKen2HQrUC1fQDdUEiKGpZGnDaSZcPy3sEcgr148UEAn6HlefPBOCtTBXHcN-9BBXWOHn~zs3IdLEA__',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25.sp,
        mainAxisExtent: 330.sp,
      ),
      padding: EdgeInsets.all(5.sp),
      itemBuilder: (BuildContext context, int index) {
        ProductInfor productItem = products[index];
        return Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(
                      '/product_infor',
                      arguments: productItem,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(11.sp),
                    child: Image.network(
                      productItem.thumbnail!,
                      height: 256.sp,
                      width: 167.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 12.sp,
                  left: 121.sp,
                  child: Container(
                    width: 34.sp,
                    height: 34.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: LikeButton(
                        size: 30.sp,
                        circleColor: const CircleColor(
                          start: AppColors.primaryColor,
                          end: AppColors.primaryColor,
                        ),
                        bubblesColor: const BubblesColor(
                          dotPrimaryColor: AppColors.likeColor,
                          dotSecondaryColor: AppColors.likeColor,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Image(
                            image: isLiked
                                ? const AssetImage(AppImage.imgFavoriteClick)
                                : const AssetImage(AppImage.imgFavorite),
                          );
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  productItem.name!,
                  style: GoogleFonts.poppins(
                      color: AppColors.textProduct,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(
              height: 6.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\$${productItem.cost!}',
                  style: GoogleFonts.poppins(
                      color: AppColors.costColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
