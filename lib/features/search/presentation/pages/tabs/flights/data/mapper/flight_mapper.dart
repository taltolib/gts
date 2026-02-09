
 import 'package:gts/domain/models/flight_item.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_flight_request.dart';

class FlightMapper {


  static ModelFlightRequest toRequest({
    required FlightItem route,
    required Passengers passengers,
  }) {
    return ModelFlightRequest(
      directions: [
        Direction(
          departure: route.departure,
          arrival: route.arrival,
          departureDate: route.departureDate,
        ),
      ],
      adt: passengers.adult,
      chd: passengers.child,
      inf: passengers.infant,
      flightRequestClass: passengers.flightClass,
      flexible: passengers.flexible,
      direct: passengers.direct,
      airlines: [],
      passengersIds: [],
    );
  }


}