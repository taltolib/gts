import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/main/app.dart';

class CustomTextField extends StatefulWidget {
  VoidCallback onTap;
  String hintText;
  Icon? icon;
  bool isIcon;
  bool isDirections;
  TextEditingController? controller;

  CustomTextField({
    super.key,
    required this.onTap,
    required this.hintText,
    this.controller,
    this.icon,
    this.isIcon = false,
    this.isDirections = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String addressA = 'Откуда';

  String addressB = 'Куда';

  Widget child() {
    return Text('TASH', style: AppFonts.mulish.s15w600());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: BoxBorder.all(
            width: 1,
            color: AppColors.other.greyLightBorder,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
          child: Row(
            children: [
              Text(widget.hintText, style: AppFonts.mulish.s15w600()),
              widget.hintText == addressA
                  ? Text(
                      widget.hintText,
                      style: AppFonts.mulish.s15w600(
                        color: AppColors.fonts.greyLight,
                      ),
                    )
                  : Text(widget.hintText, style: AppFonts.mulish.s15w600(color: AppColors.fonts.greyLight)),
            ],
          ),
        ),
      ),
    );
  }
}
