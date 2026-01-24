import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/image/app_image.dart';

class ButtonReplace extends StatefulWidget {
  final VoidCallback onTap;

  const ButtonReplace({super.key, required this.onTap});

  @override
  State<ButtonReplace> createState() => _ButtonReplaceState();
}

class _ButtonReplaceState extends State<ButtonReplace> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 40,
        width: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.button.white,
          borderRadius: BorderRadius.circular(100),
          border: BoxBorder.all(
            width: 1,
            color: AppColors.other.greyLightBorder,
          ),
        ),
        child: swapRoute(),

      ),
    );
  }
}

Widget swapRoute (){
  return AppImages.other.swapRoute(
    height: 20,
    width: 20,
    color: AppColors.button.grey300,
  );
}
