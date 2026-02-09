import 'package:flutter/foundation.dart';
import 'package:gts/domain/models/flight_item.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/mapper/flight_mapper.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/repository/flight_repository.dart';

class FlightSearchProvider extends ChangeNotifier {
  final FlightRepository repository;

  FlightItem? route;
  Passengers? passengers;

  String? requestId;
  bool isLoading = false;

  FlightSearchProvider(this.repository);

  void setRoute(FlightItem value) {
    route = value;
  }

  void setPassengers(Passengers value) {
    passengers = value;
  }

  Future<void> search() async {
    if (route == null || passengers == null) {
      throw Exception('Данные поиска не заполнены');
    }

    isLoading = true;
    notifyListeners();

    final request = FlightMapper.toRequest(
      route: route!,
      passengers: passengers!,
    );

    requestId = await repository.createSearch(request);

    isLoading = false;
    notifyListeners();
  }
}
