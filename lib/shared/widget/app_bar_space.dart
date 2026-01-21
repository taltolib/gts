import 'package:flutter/material.dart';
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
        AppImages.logo.logo(width: 115,height: 32,),
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
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: BoxBorder.all(width: 0.8,color: AppColors.button.white.withOpacity(0.15)),
          color: AppColors.button.white.withOpacity(0.80),
        ),
        child: Icon(Icons.grid_view_rounded, size: 18, color: AppColors.button.grey),
      ),
    ),
  );
}
