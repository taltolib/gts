class GtsPassengers {
  int adults;
  int children;
  int infants;

  GtsPassengers({
    this.adults = 1,
    this.children = 0,
    this.infants = 0,
  });

  static const int maxPassengersWithSeat = 9;

  bool canSetAdults(int newAdults) {
    if (newAdults < 1) return false;
    if (newAdults + children > maxPassengersWithSeat) return false;
    if (infants > newAdults) return false;
    return true;
  }

  bool canSetChildren(int newChildren) {
    if (newChildren < 0) return false;
    if (adults + newChildren > maxPassengersWithSeat) return false;
    return true;
  }

  bool canSetInfants(int newInfants) {
    if (newInfants < 0) return false;
    if (newInfants > adults) return false;
    return true;
  }
}
