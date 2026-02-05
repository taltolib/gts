import 'package:gts/features/search/presentation/models/location_item.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_locations_response.dart';

class LocationMapper {

  static LocationItem mapCity(List<Datum> data) {
    final cityDatum = data.firstWhere((e) => e.isCity ==1);

    final airports = data
        .where((e) => e.isAirport == true)
        .map(mapAirport)
        .toList();

    return LocationItem(
      type: LocationItemType.city,
      title: cityDatum.cityRus ?? '',
      subtitle: cityDatum.countryRus,
      children: airports,
    );
  }

  static LocationItem mapAirport(Datum d) {
    return LocationItem(
      type: LocationItemType.airport,
      title: d.nameRus ?? '',
      code: d.iataCode,
    );
  }
}
