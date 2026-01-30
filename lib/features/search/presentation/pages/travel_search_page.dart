import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/features/search/presentation/pages/tabs/search_tabs.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/app_bar_space.dart';
import 'package:gts/shared/widget/content_container.dart';
import 'package:gts/shared/widget/custom_button.dart';

class TravelSearchPage extends StatefulWidget {
  const TravelSearchPage({super.key});

  @override
  State<TravelSearchPage> createState() => _TravelSearchPageState();
}

class _TravelSearchPageState extends State<TravelSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundFill(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              children: [
                AppBarSpace(onTap: () {}),
                SizedBox(height: 30),
                ContentContainer(child: SearchTabs()),
                SizedBox(height: 20),
                // buttonAddWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget backgroundFill() {
  return Positioned.fill(
    child: AppImages.background.backgroundWhite(fit: BoxFit.cover),
  );
}

Widget buttonAddWidget (){
  return CustomButton(
    text: 'Добавить виджет',
    textStyle: AppFonts.mulish.s16w600(color: AppColors.brandColors.blueAccent),
    onTap: () {},
    icon: AppImages.other.addWidget(),
    iconColor: AppColors.brandColors.blueAccent,
    widthBorder: 1,
    borderColor: AppColors.brandColors.blueAccent,
    backgroundColor: AppColors.brandColors.blueAccent.withOpacity(0.08),
    textColor: AppColors.brandColors.blueAccent,
    style: AppButtonStyle.outlined,

  );
}