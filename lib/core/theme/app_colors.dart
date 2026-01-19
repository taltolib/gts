import 'package:flutter/material.dart';

class AppColors {
  static _TestColor fonts = _TestColor();
  static _WidgetButton button = _WidgetButton();
  static Type common = _TestColor;
}

class _TestColor {
  Color textPrimary = Color(0xFF030640);
  Color textSecondary = Color(0xFF1E2633);

  Color accent = Color(0xFF00BCD4);

  Color success = Color(0xFF4CAF50);
  Color warning = Color(0xFFFFC107);
  Color error = Color(0xFFF44336);

  Color background = Color(0xFFF5F5F5);
}

class _WidgetButton {
  Color grey = Color(0xFF44546F);
  Color white = Color(0xFFFFFFFF);
}
