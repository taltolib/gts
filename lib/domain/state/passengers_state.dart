import 'package:flutter/material.dart';
import 'package:gts/domain/models/gts_passengers.dart';


class PassengersState extends ChangeNotifier {
  final GtsPassengers _passengers = GtsPassengers();

 GtsPassengers get data => _passengers;

  void setAdults(int value) {
    if (_passengers.canSetAdults(value)) {
      _passengers.adults = value;
      notifyListeners();
    }
  }

  void setChildren(int value) {
    if (_passengers.canSetChildren(value)) {
      _passengers.children = value;
      notifyListeners();
    }
  }

  void setInfants(int value) {
    if (_passengers.canSetInfants(value)) {
      _passengers.infants = value;
      notifyListeners();
    }
  }
}
