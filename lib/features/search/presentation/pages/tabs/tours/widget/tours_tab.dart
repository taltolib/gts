import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';

class ToursTab extends StatelessWidget {
  const ToursTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Center(
        child: Text(
          'Данная страница находится в процессе \n разработки и времеено недоступна',
          style: AppFonts.mulish.s15w500(color: AppColors.fonts.error),
        ),
      ),
    );
  }
}
