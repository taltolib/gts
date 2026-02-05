// import 'package:flutter/cupertino.dart';
//
// class CalendarSelectionState extends ChangeNotifier {
//   TripType tripType = TripType.oneWay;
//
//   DateTime? departureDate;
//   DateTime? returnDate;
//
//   // данные из API
//   final Map<DateTime, DatePrice> prices = {};
//
//   // кастомизация цветов
//   Color activeRangeColor = Colors.cyan;
//   Color selectedDayColor = Colors.cyan;
//   Color todayBorderColor = Colors.blue;
//
//   void setTripType(TripType type) {
//     tripType = type;
//
//     if (type == TripType.oneWay) {
//       returnDate = null;
//     }
//
//     notifyListeners();
//   }
//
//   void selectDate(DateTime date) {
//     if (tripType == TripType.oneWay) {
//       departureDate = date;
//     } else {
//       if (departureDate == null || returnDate != null) {
//         departureDate = date;
//         returnDate = null;
//       } else {
//         if (date.isAfter(departureDate!)) {
//           returnDate = date;
//         } else {
//           departureDate = date;
//         }
//       }
//     }
//     notifyListeners();
//   }
//
//   bool isInRange(DateTime date) {
//     if (departureDate == null || returnDate == null) return false;
//     return date.isAfter(departureDate!) && date.isBefore(returnDate!);
//   }
// }
