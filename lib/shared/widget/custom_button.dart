import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';

enum AppButtonStyle {
  filled,
  outlined,
  light,
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final TextStyle? textStyle;
  final Widget? icon;
  final double height;
  final double radius;
  final AppButtonStyle style;
  final double? widthBorder;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
    this.height = 48,
    this.radius = 100,
    this.style = AppButtonStyle.filled,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.iconColor,
    this.widthBorder,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasIcon = icon != null;

    Color bg;
    Color border;
    Color txt;

    switch (style) {
      case AppButtonStyle.filled:
        bg = backgroundColor ?? AppColors.brandColors.blueAccent;
        border = Colors.transparent;
        txt = textColor ?? Colors.white;
        break;

      case AppButtonStyle.outlined:
        bg = backgroundColor ?? Colors.transparent;
        border = borderColor ?? AppColors.brandColors.blueAccent;
        txt = textColor ?? AppColors.brandColors.blueAccent;
        break;

      case AppButtonStyle.light:
        bg = backgroundColor ?? AppColors.brandColors.blueLight;
        border = Colors.transparent;
        txt = textColor ?? AppColors.brandColors.blueAccent;
        break;
    }
    return Material(
      color: bg,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: border,width:widthBorder ?? 0 ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasIcon) ...[
                IconTheme(
                  data: IconThemeData(
                    size: 20,
                    color: iconColor ?? txt,
                  ),
                  child: icon!,
                ),
                const SizedBox(width: 10),
              ],
              textStyleWidget(text, textStyle!),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textStyleWidget(String text, TextStyle style) {
  return Text(
    text,
    style: style,
  );
}