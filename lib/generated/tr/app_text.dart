class AppText {
  AppText._();

  static const auth = _AuthText();
}

class _AuthText {
  const _AuthText();

  String get login => 'auth.login';
  String get password => 'auth.password';
  String get confirmPassword => 'auth.confirm_password';
}
