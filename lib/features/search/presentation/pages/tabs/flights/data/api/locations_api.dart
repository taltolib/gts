
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_locations_response.dart';
import 'package:http/http.dart' as http;

class LocationsApi {
  final http.Client client;

  LocationsApi({http.Client? client})
      : client = client ?? http.Client();

  Future<ModelLocationsResponse> searchCity(String query) async {
    final response = await client.get(
      Uri.parse(
        'https://api2.globaltravel.space/static/airports/$query',
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки локаций');
    }

    return locationsResponseFromJson(response.body);
  }
}
