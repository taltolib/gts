import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/api/locations_api.dart' show LocationsApi;
import 'package:gts/features/search/presentation/pages/tabs/flights/repository/locations_repository.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/location_search_notifier.dart';
import 'package:provider/provider.dart';

import 'main/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru'), Locale('uz')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => LocationSearchNotifier(
              LocationsRepository(LocationsApi()),
            ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
