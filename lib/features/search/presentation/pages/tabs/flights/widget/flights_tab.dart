import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/sheets/from_city_sheet.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/button_replace.dart';
import 'package:gts/shared/widget/custom_button.dart';
import 'package:gts/shared/widget/custom_show_bottom_sheet_dialog.dart';
import 'package:gts/shared/widget/form_value_field.dart';
import 'package:gts/shared/widget/header_show_bottom_sheet_dialog.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            _flightsFromData(context),
            const SizedBox(height: 6),
            _flightsToData(context),
            const SizedBox(height: 6),
            Row(
              children: [
                _flightsWhenData(context),
                const SizedBox(width: 6),
                _flightsBackData(context),
              ],
            ),
            const SizedBox(height: 6),
            _flightClassSelector(),
            const SizedBox(height: 15),
            Row(
              children: [
                _isOneDayButtonWidget(
                  isOneDay,
                  () => setState(() => isOneDay = !isOneDay),
                ),
                _inStockButtonWidget(
                  inStock,
                  () => setState(() => inStock = !inStock),
                ),
              ],
            ),
            const SizedBox(height: 15),
            _searchButton(),
            const SizedBox(height: 10),
            _difficultRouteButton(),
          ],
        ),
        Positioned(right: 20, top: 45, child: ButtonReplace(onTap: () {})),
      ],
    );
  }
}


Widget _flightsFromData(context) {
  return FormValueField(
    hint: 'Откуда',
    onTap: () {
      customShowBottomSheetDialog(
        context,
        0.9,
        HeaderShowBottomSheetDialog(
          title: 'Откуда',
          child1: FromCitySheet(),
          child2: Container(),
        ),
        Container(),
        CustomButton(
          textStyle: AppFonts.mulish.s14w600(color: AppColors.button.white),
          text: 'Готово',
          onTap: () {},
          backgroundColor: AppColors.brandColors.blueAccent,
          textColor: AppColors.button.white,
          style: AppButtonStyle.filled,
        ),
      );
    },
    shortValue: '',
    value: '',
  );
}

Widget _flightsToData(context) {
  return FormValueField(
    onTap: () {},
    hint: 'Куда',
    shortValue: 'TASH',
    value: 'Tashkent',
  );
}

Widget _flightsBackData(context) {
  return Expanded(
    child: FormValueField(onTap: () {}, hint: 'Обратно', value: ''),
  );
}

Widget _flightsWhenData(context) {
  return Expanded(
    child: FormValueField(onTap: () {}, hint: 'Когда', value: '23.01.2026'),
  );
}

Widget _flightClassSelector() {
  return FormValueField(
    onTap: () {},
    hint: 'Эконом класс',
    shortValue: '',
    value: '1 пасажир',
    isIcon: true,
  );
}

Widget _inStockButtonWidget(bool inStock, VoidCallback onTap) {
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

Widget _isOneDayButtonWidget(bool isOneDay, VoidCallback onTap) {
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

Widget _difficultRouteButton() {
  return CustomButton(
    textStyle: AppFonts.mulish.s16w600(color: AppColors.brandColors.grey),
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

Widget _searchButton() {
  return CustomButton(
    textStyle: AppFonts.mulish.s16w600(color: AppColors.button.white),
    text: 'Поиск',
    icon: AppImages.other.searchIcon(color: AppColors.button.white),
    onTap: () {},
    iconColor: AppColors.button.white,
    backgroundColor: AppColors.brandColors.blueAccent,
    textColor: AppColors.button.white,
    style: AppButtonStyle.filled,
  );
}
