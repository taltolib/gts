import 'package:flutter/foundation.dart';
import 'package:gts/domain/models/gts_passengers.dart';

class PassengersProvider extends ChangeNotifier {
  final GtsPassengers _passengers = GtsPassengers();

  String flightClass = 'Эконом класс';

  int get adults => _passengers.adults;
  int get children => _passengers.children;
  int get infants => _passengers.infants;
  int get total => adults + children + infants;

  bool canIncrement(String type) {
    switch (type) {
      case 'Взрослые':
        return _passengers.canSetAdults(adults + 1);
      case 'Дети':
        return _passengers.canSetChildren(children + 1);
      case 'Младенцы':
        return _passengers.canSetInfants(infants + 1);
    }
    return false;
  }

  bool canDecrement(String type) {
    switch (type) {
      case 'Взрослые':
        return _passengers.canSetAdults(adults - 1);
      case 'Дети':
        return _passengers.canSetChildren(children - 1);
      case 'Младенцы':
        return _passengers.canSetInfants(infants - 1);
    }
    return false;
  }

  void increment(String type) {
    if (!canIncrement(type)) return;

    switch (type) {
      case 'Взрослые':
        _passengers.adults++;
        break;
      case 'Дети':
        _passengers.children++;
        break;
      case 'Младенцы':
        _passengers.infants++;
        break;
    }
    notifyListeners();
  }

  void decrement(String type) {
    if (!canDecrement(type)) return;

    switch (type) {
      case 'Взрослые':
        _passengers.adults--;
        break;
      case 'Дети':
        _passengers.children--;
        break;
      case 'Младенцы':
        _passengers.infants--;
        break;
    }
    notifyListeners();
  }

  void setClass(String value) {
    flightClass = value;
    notifyListeners();
  }
}
