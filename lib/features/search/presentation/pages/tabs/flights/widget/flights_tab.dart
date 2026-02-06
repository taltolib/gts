import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/sheets/from_city_sheet.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/location_from_search.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/state/location_to_search.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/airport_tile.dart';
import 'package:gts/shared/widget/button_replace.dart';
import 'package:gts/shared/widget/city_tile.dart';
import 'package:gts/shared/widget/custom_button.dart';
import 'package:gts/shared/widget/custom_show_bottom_sheet_dialog.dart';
import 'package:gts/shared/widget/form_value_field.dart';
import 'package:gts/shared/widget/from_body_sheet.dart';
import 'package:gts/shared/widget/header_show_bottom_sheet_dialog.dart';
import 'package:gts/shared/widget/todo_choice_widget.dart';
import 'package:provider/provider.dart';

class FlightsTab extends StatefulWidget {
  const FlightsTab({super.key});

  @override
  State<FlightsTab> createState() => _FlightsTabState();
}

class _FlightsTabState extends State<FlightsTab> {
  bool isOneDay = false;
  bool inStock = false;

  int _calcItemIsFromCount(LocationFromSearch resFrom) {
    if (resFrom.isLoading || resFrom.hasError || !resFrom.hasResult) {
      return 1;
    }
    return resFrom.city!.children.length + 1;
  }

  int _calcItemIsToCount(LocationToSearch resTo) {
    if (resTo.isLoading || resTo.hasError || !resTo.hasResult) {
      return 1;
    }
    return resTo.city!.children.length + 1;
  }

  @override
  Widget build(BuildContext context) {
    final resFrom = context.watch<LocationFromSearch>();
    final resTo = context.watch<LocationToSearch>();
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            _flightsFromData(context, resFrom, _calcItemIsFromCount),
            const SizedBox(height: 6),
            _flightsToData(context, resTo, _calcItemIsToCount),
            const SizedBox(height: 6),
            Row(
              children: [
                _flightsWhenData(context),
                const SizedBox(width: 6),
                _flightsBackData(context),
              ],
            ),
            const SizedBox(height: 6),
            _flightClassSelector(context),
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

Widget _flightsFromData(
  context,
  LocationFromSearch res,
  Function calcItemCount,
) {
  return FormValueField(
    hint: 'Откуда',
    onTap: () {
      customShowBottomSheetDialog(
        context,
        0.9,
        HeaderShowBottomSheetDialog(
          title: 'Откуда',
          styleText: AppFonts.mulish.s18w700(),
          child1: FromCitySheet(
            onChanged: (value) {
              res.searchCity(value);
            },
          ),
        ),
        Consumer<LocationFromSearch>(
          builder: (context, res, _) {
            return FromBodySheet(
              itemCount: calcItemCount(res),
              itemBuilder: (context, index) {
                if (res.isLoading) {
                  return Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.brandColors.blueAccent,
                      ),
                    ),
                  );
                }
                if (res.hasError) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        res.error!,
                        style: AppFonts.mulish.s14w400(
                          color: AppColors.fonts.error,
                        ),
                      ),
                    ),
                  );
                }
                if (!res.hasResult) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(''),
                  );
                }
                if (index == 0) {
                  return CityTile(
                    city: res.city!,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  );
                }
                final airport = res.city!.children[index - 1];
                return AirportTile(
                  airport: airport,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                );
              },
            );
          },
        ),
        Container(),
      );
    },
    shortValue: res.city?.code ?? '',
    value: res.city?.title ?? '',
  );
}

Widget _flightsToData(context, LocationToSearch res, Function calcItemCount) {
  return FormValueField(
    onTap: () {
      customShowBottomSheetDialog(
        context,
        0.9,
        HeaderShowBottomSheetDialog(
          title: 'Куда',
          styleText: AppFonts.mulish.s18w700(),
          child1: FromCitySheet(
            onChanged: (value) {
              res.searchCity(value);
            },
          ),
        ),
        Consumer<LocationToSearch>(
          builder: (context, res, _) {
            return FromBodySheet(
              itemCount: calcItemCount(res),
              itemBuilder: (context, index) {
                if (res.isLoading) {
                  return Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.brandColors.blueAccent,
                      ),
                    ),
                  );
                }
                if (res.hasError) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        res.error!,
                        style: AppFonts.mulish.s14w400(
                          color: AppColors.fonts.error,
                        ),
                      ),
                    ),
                  );
                }
                if (!res.hasResult) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(''),
                  );
                }
                if (index == 0) {
                  return CityTile(
                    city: res.city!,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  );
                }
                final airport = res.city!.children[index - 1];
                return AirportTile(
                  airport: airport,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                );
              },
            );
          },
        ),
        Container(),
      );
    },
    hint: 'Куда',
    shortValue: res.city?.code ?? '',
    value: res.city?.title ?? '',
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

Widget _flightClassSelector(context) {
  return FormValueField(
    onTap: () {
      customShowBottomSheetDialog(
        context,
        0.6,
        HeaderShowBottomSheetDialog(
          title: 'Пассажиры и классы',
          styleText: AppFonts.mulish.s18w700(),
        ),
        FromBodySheet(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container();
          },
        ),
        Container(),
      );
    },
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
