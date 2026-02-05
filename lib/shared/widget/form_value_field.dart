import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class FormValueField extends StatelessWidget {
  final String hint;
  final String? value;
  final String? shortValue;
  final VoidCallback onTap;
  final bool isTextDown;
  final bool isIcon;


  const FormValueField({
    super.key,
    required this.hint,
    required this.onTap,
    this.value,
    this.isIcon = false,
    this.shortValue,
    this.isTextDown = false,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasValue = value != null && value!.isNotEmpty;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.other.greyLightBorder),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasValue) hintTextWidget(hint),
            Row(
              children: [
                Expanded(
                  flex: isTextDown == false ? 4 : 3,
                  child: fontsSize(value, hint, hasValue),
                ),
                if (hasValue && shortValue != null)
                  shortValueTextWidget(shortValue),
                if (isIcon) iconWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget hintTextWidget (String hint){
  return Text(
    hint,
    style: AppFonts.mulish.s15w400(
      color: AppColors.fonts.greyLight,
    ),
  );
}

Widget shortValueTextWidget (String? shortValue){
  return Expanded(
    flex: 1,
    child: Text(
      shortValue!,
      style: AppFonts.mulish.s15w600(
        color: AppColors.fonts.grey,
      ),
    ),
  );
}

Widget fontsSize ( String? value, String hint, bool hasValue){
  return Text(
    hasValue ? value! : hint,
    style: hasValue
        ? AppFonts.mulish.s15w500(
      color: AppColors.fonts.black500,
    )
        : AppFonts.mulish.s15w600(
      color: AppColors.fonts.grey,
    ),
  );
}

Widget iconWidget (){
  return AppImages.other.ArrowDownIcon(width:20,height: 20 );
}