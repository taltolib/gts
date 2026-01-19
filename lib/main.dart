import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'main/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru'), Locale('uz')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      child: const App(),
    ),
  );
}
