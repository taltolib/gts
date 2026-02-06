import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/models/location_item.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/repository/locations_repository.dart';

class LocationFromSearch extends ChangeNotifier {
  final LocationsRepository repository;

  LocationFromSearch(this.repository);


  LocationItem? _city;
  bool _isLoading = false;
  String? _error;
  LocationItem? get city => _city;
  bool get isLoading => _isLoading;
  String? get error => _error;

  bool get hasResult => _city != null;
  bool get hasError => _error != null;


  Future<void> searchCity(String query) async {
    if (query.trim().length < 2) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _city = await repository.searchCity(query);
      debugPrint("$_city данные пришли ");
    } catch (e) {
      _city = null;
      debugPrint("$_city пустой все еще");
      _error = 'Город не найден';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clear() {
    _city = null;
    _error = null;
    notifyListeners();
  }

  void selectCity(LocationItem city) {
    _city = city;
    notifyListeners();
  }
}
