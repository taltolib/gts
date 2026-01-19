import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/image/app_image.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: 536.h,
          width: 336.w,
          decoration: BoxDecoration(
            color: AppColors.fonts.background,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              spacing: 15.w.h,
              children: [
                Expanded( flex: 1, child: tabIconList()),
                Expanded( flex: 10 ,child:tabViewContent()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tabIconList() {
  List<String> icons = AppImages.flight.all;
    return SizedBox(
      height: 58.h,
      width: 336.w,
      child: TabBar(
        isScrollable: true,
        labelPadding: EdgeInsets.zero,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3, color: Colors.cyan),
          insets: EdgeInsets.symmetric(horizontal:5),
        ),
        unselectedLabelColor: Colors.grey,
        indicatorWeight: 3,
        indicatorColor: AppColors.fonts.accent,
        tabs: List.generate(
          icons.length,
              (index) => Tab(
            child: Image.asset(
              icons[index],
              width: 80.w,
              height: 58.h,
            ),
          ),
        ),
      ),
    );
  }



Widget tabViewContent (){
  return TabBarView(
      children: [
        Container( color: Colors.red,),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,),
        Container(color: Colors.blue,),
        Container(color: Colors.purple,),
        Container(color: Colors.orange,),
        Container(color: Colors.pink,),
        Container(color: Colors.grey,),
      ]
  );
}
