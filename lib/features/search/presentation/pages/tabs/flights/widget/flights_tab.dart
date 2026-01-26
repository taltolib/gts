import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/button_replace.dart';
import 'package:gts/shared/widget/custom_button.dart';
import 'package:gts/shared/widget/custom_text_field.dart';
import 'package:gts/shared/widget/todo_choice_widget.dart';

class FlightsTab extends StatefulWidget {
  const FlightsTab({super.key});

  @override
  State<FlightsTab> createState() => _FlightsTabState();
}

class _FlightsTabState extends State<FlightsTab> {
  bool isOneDay = false;
  bool inStock = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          spacing: 10,
          children: [
            flightsFromData(),
            flightsToData(),
            Row(
              children: [
                flightsWhenData(),
                const SizedBox(width: 10),
                flightsBackData(),
              ],
            ),
            flightClassSelector(),
            Row(
              children: [
                isOneDayButtonWidget(
                  isOneDay,
                  () => setState(() => isOneDay = !isOneDay),
                ),
                inStockButtonWidget(
                  inStock,
                  () => setState(() => inStock = !inStock),
                ),
              ],
            ),
            searchButton(),
            difficultRouteButton(),
          ],
        ),
        Positioned(right: 20, top: 35, child: ButtonReplace(onTap: () {})),
      ],
    );
  }
}

Widget flightsFromData() {
  return CustomTextField(
    hint: 'Откуда',
    onTap: () {},
    shortValue: '',
    value: '',
  );
}

Widget flightsToData() {
  return CustomTextField(
    onTap: () {},
    hint: 'Куда',
    shortValue: 'TASH',
    value: 'Tashkent',
  );
}

Widget flightsBackData() {
  return Expanded(
    child: CustomTextField(onTap: () {}, hint: 'Обратно', value: ''),
  );
}

Widget flightsWhenData() {
  return Expanded(
    child: CustomTextField(onTap: () {}, hint: 'Когда', value: '23.01.2026'),
  );
}

Widget flightClassSelector() {
  return CustomTextField(
    onTap: () {},
    hint: 'Эконом класс',
    shortValue: '',
    value: '1 пасажир',
    isIcon: true,
  );
}

Widget inStockButtonWidget(bool inStock, VoidCallback onTap) {
  return Expanded(
    child: Row(
      children: [
        TodoChoiceWidget(isChecked: inStock, onChanged: onTap),
        const SizedBox(width: 10),
        Text(
          'Наличие места',
          style: AppFonts.mulish.s15w400(color: AppColors.fonts.grey),
        ),
      ],
    ),
  );
}

Widget isOneDayButtonWidget(bool isOneDay, VoidCallback onTap) {
  return Expanded(
    child: Row(
      children: [
        TodoChoiceWidget(isChecked: isOneDay, onChanged: onTap),
        const SizedBox(width: 10),
        Text(
          '± 1 день',
          style: AppFonts.mulish.s15w400(color: AppColors.fonts.grey),
        ),
      ],
    ),
  );
}


Widget difficultRouteButton (){
  return CustomButton(
    text: "Сложный маршрут",
    onTap: () {},
    textColor: AppColors.brandColors.grey,
    style: AppButtonStyle.light,
    icon: AppImages.other.difficultRoute(),

    iconColor: AppColors.brandColors.grey,
    backgroundColor: AppColors.brandColors.white,
    borderColor: AppColors.other.greyLightBorder,
    widthBorder: 1,
  );
}

Widget searchButton (){
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