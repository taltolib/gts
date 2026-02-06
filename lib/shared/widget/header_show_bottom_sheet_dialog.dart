import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';

class  HeaderShowBottomSheetDialog extends StatelessWidget {
  final String? title;
  final TextStyle styleText;
  final Widget? child1;
  final Widget? child2;

 const HeaderShowBottomSheetDialog({ this.title,this.child1, this.child2,super.key, required this.styleText,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        _header(title ?? '', styleText, context),
        child1 ?? Container(),
        child2 ?? Container(),
      ],
    );
  }
}
Widget _header(String title , TextStyle styleText ,context){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: styleText),
      GestureDetector(
        onTap: () => Navigator.of(context).pop(),
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
          child:  const Icon(Icons.close, size: 18),
        ),
      ),
    ],
  );
}