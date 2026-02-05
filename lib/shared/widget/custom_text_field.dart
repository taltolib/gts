import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class CustomTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  const CustomTextField({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:  onChanged,
      controller:  controller,
      cursorColor: AppColors.brandColors.blueAccent,
      cursorRadius: Radius.circular(12),
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.all(13),
          child: AppImages.other.searchIcon(
            height: 20,
            width: 20,
            color: AppColors.brandColors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.brandColors.grey,
            width: 1,
          ),
        ),
        hintText: "Поиск",
        hintStyle:AppFonts.mulish.s14w400(color: AppColors.fonts.greyLight),
        hoverColor: AppColors.brandColors.grey,
        fillColor: AppColors.brandColors.grey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.brandColors.blueAccent,
            width: 2,
          ),
        ),
      ),


    );
  }
}
