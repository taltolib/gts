import 'package:flutter/material.dart';

class CalendarWeekdays extends StatelessWidget {
  const CalendarWeekdays({super.key});

  static const _days = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Row(
        children: List.generate(_days.length, (index) {
          final isWeekend = index >= 5;

          return Expanded(
            child: Center(
              child: Text(
                _days[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: isWeekend ? Colors.redAccent : Colors.grey.shade700,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
