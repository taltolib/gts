import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/button_replace.dart';
import 'package:gts/shared/widget/custom_button.dart';
import 'package:gts/shared/widget/form_value_field.dart';

class RailwayTab extends StatelessWidget {
  const RailwayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            flightsFromData(),
            const SizedBox(height: 6),
            flightsToData(),
            const SizedBox(height: 6),
            flightsWhenData(),
            const SizedBox(height: 15),
            searchButton(),
          ],
        ),
        Positioned(right: 20, top: 45, child: ButtonReplace(onTap: () {})),
      ],
    );
  }
}

Widget flightsFromData() {
  return FormValueField(
    hint: 'Откуда',
    onTap: () {},
    shortValue: '',
    value: '',
  );
}

Widget flightsToData() {
  return FormValueField(onTap: () {}, hint: 'Куда', value: '');
}

Widget flightsWhenData() {
  return FormValueField(onTap: () {}, hint: 'Когда', value: '');
}

Widget searchButton() {
  return CustomButton(
    text: 'Поиск',
    icon: AppImages.other.searchIcon(color: AppColors.button.white),
    onTap: () {},
    iconColor: AppColors.button.white,
    backgroundColor: AppColors.brandColors.blueAccent,
    textColor: AppColors.button.white,
    style: AppButtonStyle.filled,
  );
}
