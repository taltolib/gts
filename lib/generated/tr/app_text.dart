class AppText {
  AppText._();

  static const auth = _AuthText();
  static const services = _ServicesText();
}

class _AuthText {
  const _AuthText();

  String get login => 'auth.login';
  String get password => 'auth.password';
  String get confirmPassword => 'auth.confirm_password';
}



class _ServicesText {
  const _ServicesText();

  String get flights => 'services.flights';

  String get hotels => 'services.hotels';

  String get railway => 'services.railway';

  String get transfers => 'services.transfers';

  String get tours => 'services.tours';

  String get insurance => 'services.insurance';

  String get excursions => 'services.excursions';

  String get esim => 'services.esim';


  List<String> get all =>
      [
        flights,
        hotels,
        railway,
        transfers,
        tours,
        insurance,
        excursions,
        esim,
      ];
}