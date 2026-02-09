import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/api/locations_api.dart' show LocationsApi;
import 'package:gts/features/search/presentation/pages/tabs/flights/repository/flight_repository.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/repository/locations_repository.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/flight_search_provider.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/location_from_search.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/location_to_search.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/passengers_provider.dart';
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
            create: (_) => LocationFromSearch(
              LocationsRepository(LocationsApi()),
            ),
          ),
          ChangeNotifierProvider(
            create: (_) => LocationToSearch(
              LocationsRepository(LocationsApi()),
            ),
          ),
          ChangeNotifierProvider(create: (_) =>PassengersProvider() ,),
          ChangeNotifierProvider(create: (_) => FlightSearchProvider(FlightRepository(LocationsApi())))
        ],
        child: const App(),
      ),
    ),
  );
}
