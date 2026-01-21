import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/core/theme/app_colors.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;

  const ContentContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 536.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.fonts.background,
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
      child: child,
    );
  }
}