import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';

class  HeaderShowBottomSheetDialog extends StatelessWidget {
  final String? title;
  final Widget? child1;
  final Widget? child2;

 const HeaderShowBottomSheetDialog({ this.title,this.child1, this.child2,super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        _header(title ?? ''),
        child1 ?? Container(),
        child2 ?? Container(),
      ],
    );
  }
}
Widget _header(String title){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title ?? '', style: AppFonts.mulish.s18w700()),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 34,
          width: 34,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.other.greyLightBorder,
              width: 0.8,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          child: const Icon(Icons.close, size: 18),
        ),
      ),
    ],
  );
}