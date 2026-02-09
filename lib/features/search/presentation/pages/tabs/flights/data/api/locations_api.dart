
import 'dart:convert';

import 'package:gts/domain/models/search_session.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_flight_request.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/data/models/model_locations_response.dart';
import 'package:http/http.dart' as http;

class LocationsApi {
  final http.Client client;

  LocationsApi({http.Client? client})
      : client = client ?? http.Client();

  final host = "https://api2.globaltravel.space";

  Future<ModelLocationsResponse> searchCity(String query) async {
    final response = await client.get(
      Uri.parse(
        '$host/static/airports/$query',
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки локаций');
    }

    return locationsResponseFromJson(response.body);
  }

  Future<SearchSession> searchSendingOffers(
      ModelFlightRequest request,
      ) async {
    final response = await client.post(
      Uri.parse('$host/v1/content/search/'),
      headers: {'Content-Type': 'application/json'},
      body: flightRequestToJson(request),
    );

    if (response.statusCode != 200) {
      throw Exception('Ошибка создания поиска');
    }

    return SearchSession.fromJson(
      jsonDecode(response.body),
    );
  }
}

