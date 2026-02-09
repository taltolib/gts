import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/shared/widget/stepper_counter.dart';

class PassengerCounterTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final int value;
  final  VoidCallback onTapPlus;
  final  VoidCallback onTapMinus;
  final bool plusEnabled;
  final bool minusEnabled;
  const PassengerCounterTile({super.key, required this.title, required this.subtitle, required this.value, required this.onTapPlus, required this.onTapMinus,  this.plusEnabled = false,  this.minusEnabled = false});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 52,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppFonts.mulish.s16w600(
                        color: AppColors.fonts.black500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: AppFonts.mulish.s14w400(
                        color: AppColors.fonts.greyLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          StepperCounter(
            onMinus: onTapMinus,
            onPlus: onTapPlus,
            plusEnabled:plusEnabled,
            minusEnabled: minusEnabled,
            value: value,
          ),
        ],
      ),
    );
  }
}
