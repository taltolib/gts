class AppImages {
  AppImages._();

  static final flight = _FlightIcons();
  static final background = _BackGround();
  static final logo = _Logo();
  static final other = _WidgetOther();
}

class _FlightIcons {
  static const String _base = 'assets/image/icons/flights';

  String get eSim => '$_base/e_sim_icon.png';

  String get excursion => '$_base/excursion_icon.png';

  String get flights => '$_base/flights_icon.png';

  String get hotels => '$_base/hotels_icon.png';

  String get insurance => '$_base/insurance_icon.png';

  String get railway => '$_base/railway_icon.png';

  String get tours => '$_base/tours_icon.png';

  String get transfers => '$_base/transfers_icon.png';

  List<String> get all => [
    flights,
    hotels,
    railway,
    transfers,
    tours,
    insurance,
    excursion,
    eSim,
  ];
}

class _BackGround {
  static const String _base = 'assets/image/background';

  String get backgroundWhite => '$_base/background.png';
}

class _Logo  {

  static const String _base = 'assets/image/logo';

  String get logo => '$_base/gts_logo.png';
}

class _WidgetOther {
  static const String _base = 'assets/image/icons/button';

  String get settingsButton => '$_base/settings_button.png';
}