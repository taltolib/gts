import 'package:flutter/material.dart';
import 'package:gts/shared/widget/custom_text_field.dart';

class FlightsTab extends StatelessWidget {
   const FlightsTab({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        CustomTextField(onTap: () {}, hintText: 'Откуда'),
        CustomTextField(onTap: () {}, hintText: 'Куда'),
      ],
    );
  }
}
