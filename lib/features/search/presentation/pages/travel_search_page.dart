import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/app_bar_space.dart';
import 'package:gts/shared/widget/search_form.dart';

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
                SizedBox(height: 30,),
                SearchForm(),
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
    child: Image.asset(AppImages.background.backgroundWhite, fit: BoxFit.cover),
  );
}
