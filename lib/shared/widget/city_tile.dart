import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/features/search/presentation/models/location_item.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class CityTile extends StatelessWidget {
  final LocationItem city;

  const CityTile({required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          _cityIcon(),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(city),
                _subtitle(city),
              ],
            ),
          ),
          _cityCode(city),
        ],
      ),
    );
  }
}

Widget _cityIcon(){
  return  AppImages.dialog.cityIcon(
    color: AppColors.brandColors.grey,
    width: 18,
    height: 18,
  );
}

Widget _title (LocationItem city){
  return  Text(
    city.title,
    style: AppFonts.mulish.s16w600(
      color: AppColors.fonts.black500,
    ),
  );
}

Widget _subtitle (LocationItem city){
  return Text(
    city.subtitle ?? '',
    style: AppFonts.mulish.s12w400(
      color: AppColors.fonts.greyL,
    ),
  );
}

Widget _cityCode (LocationItem city){
  return Text(
    city.code ?? '',
    style: AppFonts.mulish.s14w500(
      color: AppColors.fonts.grey,
    ),
  );
}