import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/generated/tr/app_text.dart';

class ServiceTabBar extends StatelessWidget {
  final TabController tabController;

  const ServiceTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:const EdgeInsets.only(bottom: 8, top: 10),
          child: TabBar(
          controller: tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: EdgeInsets.zero, overlayColor: WidgetStateProperty.all(Colors.transparent),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 3, color: AppColors.fonts.accent),
            borderRadius: BorderRadius.circular(4),
          ),
          tabs: List.generate(AppText.services.all.length, (index) {
            final isSelected = tabController.index == index;
            final icons = AppImages.flight.all(
              width: 20,
              height: 20,
              color: isSelected
                  ? AppColors.brandColors.blueAccent
                  : AppColors.brandColors.grey,
            );
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icons[index],
                  SizedBox(height: 4),
                  _nameIcon(index, isSelected),
                  SizedBox(height: 8),
                ],
              ),
            );
          }),
                ),
        ),
    ],
    );
  }
}

Widget _nameIcon ( int index, bool isSelected){
  return Text(
    AppText.services.all[index].tr(),
    style: AppFonts.mulish.s12w600(
      color: isSelected
          ? AppColors.brandColors.blueAccent
          : AppColors.brandColors.grey,
    ),
  );
}