import 'package:flutter/material.dart';
import 'package:gts/shared/widget/custom_text_field.dart';

class InsuranceTab extends StatelessWidget {
  const InsuranceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 10),
            flightsFromData(),
            const SizedBox(height: 6),
          ],
        ),
      ],
    );
  }
}

Widget flightsFromData() {
  return CustomTextField(onTap: () {}, hint: 'Куда', value: 'Tashkent,Livan,Uzbekistan,USA,India,Africa',isIcon: true,);
}
