import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorRadius: Radius.circular(12),
      decoration: InputDecoration(
        suffixIcon: AppImages.other.searchIcon(
          height: 22,
          width: 22,
          color: AppColors.brandColors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.brandColors.grey,
            width: 1,
          ),
        ),
        counterText:  "Поиск",
        counterStyle: AppFonts.mulish.s14w400(color: AppColors.fonts.greyLight),
        hoverColor: AppColors.brandColors.grey,
        fillColor: AppColors.brandColors.grey,
        filled: true,
      ),
    );
  }
}
