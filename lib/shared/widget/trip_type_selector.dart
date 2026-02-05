// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class TripTypeSelector extends StatelessWidget {
//   const TripTypeSelector({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final state = context.watch<CalendarSelectionState>();
//
//     return Row(
//       children: [
//         ChoiceChip(
//           label: const Text('В одну сторону'),
//           selected: state.tripType == TripType.oneWay,
//           onSelected: (_) => state.setTripType(TripType.oneWay),
//         ),
//         const SizedBox(width: 8),
//         ChoiceChip(
//           label: const Text('Туда и обратно'),
//           selected: state.tripType == TripType.roundTrip,
//           onSelected: (_) => state.setTripType(TripType.roundTrip),
//         ),
//       ],
//     );
//   }
// }
//
