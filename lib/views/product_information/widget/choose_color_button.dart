import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseColorButton extends StatelessWidget {
  Color productColor;
  bool isPressed;
  VoidCallback onTap;

  ChooseColorButton({
    super.key,
    required this.productColor,
    this.isPressed = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(4.sp),
                width: 48.sp,
                height: 48.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isPressed ? productColor : Colors.white,
                    width: 2,
                  ),
                ),
                child: Container(
                  width: 36.sp,
                  height: 36.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: productColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
