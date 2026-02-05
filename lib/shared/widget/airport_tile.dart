import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/features/search/presentation/models/location_item.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class AirportTile extends StatelessWidget {
  final LocationItem airport;

  const AirportTile({required this.airport});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 16, top: 6, bottom: 6),
      child: Row(
        children: [
          _airportIcon(),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _airportTitle(airport),
                _airportCode(airport),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget _airportIcon (){
  return   AppImages.dialog.airportIcon(
    color: AppColors.brandColors.grey,
    width: 16,
    height: 16,
  );
}


Widget _airportTitle (LocationItem airport){
  return  Text(
    airport.title,
    style: AppFonts.mulish.s16w500(
      color: AppColors.fonts.black500,
    ),
  );
}


Widget _airportCode (LocationItem airport) {
  return  Text(
    airport.code ?? '',
    style: AppFonts.mulish.s12w400(
      color: AppColors.fonts.greyL,
    ),
  );
}
