import 'package:flutter/material.dart';

class AppFonts {
  AppFonts();

  static final mulish = _TextStyleMulish();
}

class _TextStyleMulish {

  static const String _fontFamily = 'Mulish';

  static TextStyle _base({
    required double size,
    required FontWeight weight,
    Color color = Colors.black,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  TextStyle s10w200({Color color = Colors.black}) =>
      _base(size: 10, weight: FontWeight.w200, color: color);

  TextStyle s10w300({Color color = Colors.black}) =>
      _base(size: 10, weight: FontWeight.w300, color: color);

  TextStyle s10w400({Color color = Colors.black}) =>
      _base(size: 10, weight: FontWeight.w400, color: color);

  TextStyle s12w200({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w200, color: color);

   TextStyle s12w300({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w300, color: color);

   TextStyle s12w400({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w400, color: color);

   TextStyle s12w500({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w500, color: color);

   TextStyle s12w600({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w600, color: color);

   TextStyle s12w700({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w700, color: color);

   TextStyle s12w800({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w800, color: color);

   TextStyle s12w900({Color color = Colors.black}) =>
      _base(size: 12, weight: FontWeight.w900, color: color);

   TextStyle s14w400({Color color = Colors.black}) =>
      _base(size: 14, weight: FontWeight.w400, color: color);

  TextStyle s15w200({Color color = Colors.black}) =>
      _base(size: 15, weight: FontWeight.w200, color: color);

  TextStyle s15w300({Color color = Colors.black}) =>
      _base(size: 15, weight: FontWeight.w300, color: color);

  TextStyle s15w400({Color color = Colors.black}) =>
      _base(size: 15, weight: FontWeight.w400, color: color);


  TextStyle s15w500({Color color = Colors.black}) =>
      _base(size: 15, weight: FontWeight.w500, color: color);

   TextStyle s15w600({Color color = Colors.black}) =>
      _base(size: 15, weight: FontWeight.w600, color: color);

   TextStyle s16w700({Color color = Colors.black}) =>
      _base(size: 16, weight: FontWeight.w700, color: color);
}
