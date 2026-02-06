import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';

class AnimatedChoiceTile extends StatelessWidget {
  const AnimatedChoiceTile({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
    this.height = 48,
    this.radius = 12,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;
  final double height;
  final double radius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: selected ? AppColors.brandColors.blueAccent :AppColors.brandColors.grey200,
            width: 1.0,
          ),
          color: selected
              ? AppColors.brandColors.blueAccent.withOpacity(0.06)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            _RadioDot(selected: selected),
            const SizedBox(width: 12),
            Text(
              title,
              style: AppFonts.mulish.s15w500(color: AppColors.fonts.black500 ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RadioDot extends StatelessWidget {
  const _RadioDot({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: selected
              ?  AppColors.brandColors.blueAccent
              :  AppColors.brandColors.grey200,
          width: 2,
        ),
      ),
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: selected ? 10 : 0,
          height: selected ? 10 : 0,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.brandColors.blueAccent,
          ),
        ),
      ),
    );
  }
}
