import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/image/app_image.dart';

class AppBarSpace extends StatelessWidget {
  VoidCallback onTap;

  AppBarSpace({super.key,  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppImages.logo.logo,
          width: 115,
          height: 32,
          fit: BoxFit.cover,
        ),
        buttonCategory(onTap),
      ],
    );
  }
}

Widget buttonCategory(VoidCallback onTap) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32).r,
          border: BoxBorder.all(width: 0.8.w,color: AppColors.button.white.withOpacity(0.15)),
          color: AppColors.button.white.withOpacity(0.80),
        ),
        child: Icon(Icons.grid_view_rounded, size: 18.sp, color: AppColors.button.grey),
      ),
    ),
  );
}
