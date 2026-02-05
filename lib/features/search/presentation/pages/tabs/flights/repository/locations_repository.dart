import 'package:gts/features/search/presentation/models/location_item.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/api/locations_api.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/mapper/location_mapper.dart';

class LocationsRepository {
  final LocationsApi api;

  LocationsRepository(this.api);

  Future<LocationItem> searchCity(String query) async {
    final response = await api.searchCity(query);

    final data = response.data;
    if (data == null || data.isEmpty) {
      throw Exception('Город не найден');
    }

    return LocationMapper.mapCity(data);
  }

}
