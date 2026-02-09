import 'package:gts/features/search/presentation/pages/tabs/flights/data/api/locations_api.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_flight_request.dart';

class FlightRepository {
  final LocationsApi api;

  FlightRepository(this.api);

  Future<String> createSearch(ModelFlightRequest request) async {
    final response = await api.searchSendingOffers(request);
    return response.requestId;
  }
}
