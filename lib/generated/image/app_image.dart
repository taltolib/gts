import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget _svg(String path, double? width, double? height, Color? color) {
  return SvgPicture.asset(
    path,
    width: width,
    height: height,
    colorFilter: color != null
        ? ColorFilter.mode(color, BlendMode.srcIn)
        : null,
    fit: BoxFit.contain,
  );
}

class AppImages {
  AppImages._();

  static final flight = _FlightIcons();
  static final background = _BackGround();
  static final logo = _Logo();
  static final other = _WidgetOther();
}

class _FlightIcons {
  static const String _base = 'assets/image/icons/flights';


  Widget eSim({double? width, double? height, Color? color}) =>
      _svg('$_base/e_sim_icon.svg', width, height, color);

  Widget excursion({double? width, double? height, Color? color}) =>
      _svg('$_base/excursion_icon.svg', width, height, color);

  Widget flights({double? width, double? height, Color? color}) =>
      _svg('$_base/flights_icon.svg', width, height, color);

  Widget hotels({double? width, double? height, Color? color}) =>
      _svg('$_base/hotels_icon.svg', width, height, color);

  Widget insurance({double? width, double? height, Color? color}) =>
      _svg('$_base/insurance_icon.svg', width, height, color);

  Widget railway({double? width, double? height, Color? color}) =>
      _svg('$_base/railway_icon.svg', width, height, color);

  Widget tours({double? width, double? height, Color? color}) =>
      _svg('$_base/tours_icon.svg', width, height, color);

  Widget transfers({double? width, double? height, Color? color}) =>
      _svg('$_base/transfers_icon.svg', width, height, color);

  List<Widget> all({double? width, double? height, Color? color}) => [
    flights(width: width, height: height, color: color),
    hotels(width: width, height: height, color: color),
    railway(width: width, height: height, color: color),
    transfers(width: width, height: height, color: color),
    tours(width: width, height: height, color: color),
    insurance(width: width, height: height, color: color),
    excursion(width: width, height: height, color: color),
    eSim(width: width, height: height, color: color),
  ];
}

class _BackGround {
  static const String _base = 'assets/image/background';

  Widget backgroundWhite({
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) =>
      SvgPicture.asset(
        '$_base/background.svg',
        width: width,
        height: height,
        fit: fit,
      );
}


class _Logo {
  static const String _base = 'assets/image/logo';

  Widget logo({double? width, double? height}) =>
      SvgPicture.asset(
        '$_base/gts_logo.svg',
        width: width,
        height: height,
        fit: BoxFit.contain,
      );
}



class _WidgetOther {

  static const String _base = 'assets/image/icons/button';

  Widget swapRoute({double? width, double? height, Color? color}) =>
      _svg('$_base/swap_route.svg', width, height, color);
}





