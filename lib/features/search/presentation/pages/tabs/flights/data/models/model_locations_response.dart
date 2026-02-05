
import 'dart:convert';

ModelLocationsResponse locationsResponseFromJson(String str) => ModelLocationsResponse.fromJson(json.decode(str));

String locationsResponseToJson(ModelLocationsResponse data) => json.encode(data.toJson());

class ModelLocationsResponse {
  String? status;
  String? message;
  int? code;
  List<Datum>? data;
  List<dynamic>? errors;

  ModelLocationsResponse({
    this.status,
    this.message,
    this.code,
    this.data,
    this.errors,
  });

  factory ModelLocationsResponse.fromJson(Map<String, dynamic> json) => ModelLocationsResponse(
    status: json["status"],
    message: json["message"],
    code: json["code"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    errors: json["errors"] == null ? [] : List<dynamic>.from(json["errors"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "code": code,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "errors": errors == null ? [] : List<dynamic>.from(errors!.map((x) => x)),
  };
}

class Datum {
  int? id;
  String? keywords;
  String? iataCode;
  String? nameRus;
  String? nameEng;
  String? cityRus;
  String? cityEng;
  String? gmtOffset;
  String? countryRus;
  String? countryEng;
  String? isoCode;
  String? latitude;
  String? longitude;
  int? hide;
  int? isCity;
  String? content;
  bool? isAirport;

  Datum({
    this.id,
    this.keywords,
    this.iataCode,
    this.nameRus,
    this.nameEng,
    this.cityRus,
    this.cityEng,
    this.gmtOffset,
    this.countryRus,
    this.countryEng,
    this.isoCode,
    this.latitude,
    this.longitude,
    this.hide,
    this.isCity,
    this.content,
    this.isAirport,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    keywords: json["keywords"],
    iataCode: json["iata_code"],
    nameRus: json["name_rus"],
    nameEng: json["name_eng"],
    cityRus: json["city_rus"],
    cityEng: json["city_eng"],
    gmtOffset: json["gmt_offset"],
    countryRus: json["country_rus"],
    countryEng: json["country_eng"],
    isoCode: json["iso_code"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    hide: json["hide"],
    isCity: json["is_city"],
    content: json["content"],
    isAirport: json["is_airport"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "keywords": keywords,
    "iata_code": iataCode,
    "name_rus": nameRus,
    "name_eng": nameEng,
    "city_rus": cityRus,
    "city_eng": cityEng,
    "gmt_offset": gmtOffset,
    "country_rus": countryRus,
    "country_eng": countryEng,
    "iso_code": isoCode,
    "latitude": latitude,
    "longitude": longitude,
    "hide": hide,
    "is_city": isCity,
    "content": content,
    "is_airport": isAirport,
  };
}
