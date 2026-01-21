import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/features/search/presentation/pages/tabs/search_tabs.dart';
import 'package:gts/generated/image/app_image.dart';
import 'package:gts/shared/widget/app_bar_space.dart';
import 'package:gts/shared/widget/content_container.dart';


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
                ContentContainer(child: SearchTabs()),
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
