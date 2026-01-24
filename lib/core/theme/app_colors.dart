import 'package:flutter/material.dart';

class AppColors {
  // ignore: library_private_types_in_public_api
  static _TestColor fonts = _TestColor();
  // ignore: library_private_types_in_public_api
  static _WidgetButton button = _WidgetButton();
  // ignore: library_private_types_in_public_api
  static _AppBrandColors brandColors = _AppBrandColors();
  // ignore: library_private_types_in_public_api
  static _OtherColors other = _OtherColors();
}

class _TestColor {
  Color textPrimary = Color(0xFF030640);
  Color black500 = Color(0xFF212121);
  Color textSecondary = Color(0xFF1E2633);
  Color grey = Color(0xFF44546F);
  Color greyLight = Color(0xFF626F86);

  Color accent = Color(0xFF00BCD4);

  Color success = Color(0xFF4CAF50);
  Color warning = Color(0xFFFFC107);
  Color error = Color(0xFFF44336);

  Color background = Color(0xFFF5F5F5);
}

class _WidgetButton {
  Color grey = Color(0xFF44546F);
  Color white = Color(0xFFFFFFFF);
  Color grey300 = Color(0xFF475569);
}

class _AppBrandColors {

  Color blueAccent = Color(0xFF00B7DA);
  Color secondary = Color(0xFFF5F5F5);
  Color grey = Color(0xFF44546F);



}


class _OtherColors {
  Color greyLightBorder = Color(0xFFD9DDE4);
}
