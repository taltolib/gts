import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';



class StepperCounter extends StatelessWidget {
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;
  final bool minusEnabled;
  final bool plusEnabled;

  const StepperCounter({
    super.key,
    required this.value,
    required this.onMinus,
    required this.onPlus,
    required this.minusEnabled,
    required this.plusEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button(Icons.remove, onMinus, minusEnabled),
        const SizedBox(width: 15),
        _counterValueText(value),
        const SizedBox(width: 15),
        _button(Icons.add, onPlus, plusEnabled),
      ],
    );
  }
}
Widget _counterValueText(int value){
  return  Text(
    value.toString(),
    style: AppFonts.mulish.s16w500(
      color: AppColors.fonts.black500,
    ),
  );
}
Widget _button(IconData icon, VoidCallback onTap, bool enabled) {
  return InkWell(
    onTap: enabled ? onTap : null,
    child: Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: enabled
            ? AppColors.brandColors.blueLight
            : AppColors.fonts.greyLight.withOpacity(0.20),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 20,
          color: enabled
              ? AppColors.brandColors.blueAccent
              : AppColors.fonts.greyLight,
        ),
      ),
    ),
  );
}