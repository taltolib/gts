import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/custom_text_field.dart';

class AppSelectionSheet extends StatelessWidget {
  final String title;
  late double? heightSize;
  bool isSearch = false;

  AppSelectionSheet({super.key, required this.title, this.heightSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightSize ?? 772,
      decoration: BoxDecoration(
        color: AppColors.brandColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            titleWidget(title),
            SizedBox(height: 12),
            isSearch == true ? searchWidget() : Container(),
            SizedBox(height: 15),
            bodyWidget(),
          ],
        ),
      ),
    );
  }
}

Widget titleWidget(String text) {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppFonts.mulish.s18w700()),
        buttonClose(),
      ],
    ),
  );
}

Widget searchWidget() {
  return Expanded(flex: 2, child: CustomTextField());
}

Widget bodyWidget() {
  return Expanded(flex: 8, child: Container());
}

Widget buttonClose() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: AppColors.other.greyLightBorder,width: 0.8, ),
        color: AppColors.brandColors.white,
        borderRadius: BorderRadius.circular(32),


      ),
    ),
  );
}