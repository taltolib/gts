
import 'dart:convert';

ModelFlightRequest flightRequestFromJson(String str) => ModelFlightRequest.fromJson(json.decode(str));

String flightRequestToJson(ModelFlightRequest data) => json.encode(data.toJson());

class ModelFlightRequest {
  List<Direction>? directions;
  int? adt;
  int? chd;
  int? inf;
  int? ins;
  String? flightRequestClass;
  bool? flexible;
  bool? direct;
  List<dynamic>? airlines;
  List<dynamic>? passengersIds;

  ModelFlightRequest({
    this.directions,
    this.adt,
    this.chd,
    this.inf,
    this.ins,
    this.flightRequestClass,
    this.flexible,
    this.direct,
    this.airlines,
    this.passengersIds,
  });

  factory ModelFlightRequest.fromJson(Map<String, dynamic> json) => ModelFlightRequest(
    directions: json["directions"] == null ? [] : List<Direction>.from(json["directions"]!.map((x) => Direction.fromJson(x))),
    adt: json["adt"],
    chd: json["chd"],
    inf: json["inf"],
    ins: json["ins"],
    flightRequestClass: json["class"],
    flexible: json["flexible"],
    direct: json["direct"],
    airlines: json["airlines"] == null ? [] : List<dynamic>.from(json["airlines"]!.map((x) => x)),
    passengersIds: json["passengers_ids"] == null ? [] : List<dynamic>.from(json["passengers_ids"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "directions": directions == null ? [] : List<dynamic>.from(directions!.map((x) => x.toJson())),
    "adt": adt,
    "chd": chd,
    "inf": inf,
    "ins": ins,
    "class": flightRequestClass,
    "flexible": flexible,
    "direct": direct,
    "airlines": airlines == null ? [] : List<dynamic>.from(airlines!.map((x) => x)),
    "passengers_ids": passengersIds == null ? [] : List<dynamic>.from(passengersIds!.map((x) => x)),
  };
}

class Direction {
  String? departure;
  String? arrival;
  DateTime? departureDate;

  Direction({
    this.departure,
    this.arrival,
    this.departureDate,
  });

  factory Direction.fromJson(Map<String, dynamic> json) => Direction(
    departure: json["departure"],
    arrival: json["arrival"],
    departureDate: json["departure_date"] == null ? null : DateTime.parse(json["departure_date"]),
  );

  Map<String, dynamic> toJson() => {
    "departure": departure,
    "arrival": arrival,
    "departure_date": "${departureDate!.year.toString().padLeft(4, '0')}-${departureDate!.month.toString().padLeft(2, '0')}-${departureDate!.day.toString().padLeft(2, '0')}",
  };
}
