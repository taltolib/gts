class FlightItem {
  final String departure;
  final String arrival;
  final DateTime departureDate;

  FlightItem({
    required this.departure,
    required this.arrival,
    required this.departureDate,
  });
}

class Passengers {
  final int adult;
  final int child;
  final int infant;
  final String flightClass;
  final bool? flexible;
  final bool? direct;

  Passengers({
    this.flexible =false,
    this.direct =false,
    this.adult = 1,
    this.child = 0,
    this.infant = 0,
    this.flightClass = 'E',
  });
}
