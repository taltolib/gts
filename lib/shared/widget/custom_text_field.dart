import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/generated/fonts/app_fonts.dart';
import 'package:gts/generated/image/app_image.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String? value;
  final String? shortValue;
  final VoidCallback onTap;
  final bool isTextDown;
  final bool isIcon;


  const CustomTextField({
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
          children: [
            if (hasValue)Text(
                hint,
                style: AppFonts.mulish.s15w400(
                  color: AppColors.fonts.greyLight,
                ),
              ),
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: isTextDown == false ? 4 :3,
                    child: Text(
                      hasValue ? value! : hint,
                      style: hasValue
                          ? AppFonts.mulish.s15w500(
                              color: AppColors.fonts.black500,
                            )
                          : AppFonts.mulish.s15w600(
                              color: AppColors.fonts.grey,
                            ),
                    ),
                  ),
                  if (hasValue && shortValue != null)
                    Expanded(
                      flex: 1,
                      child: Text(
                        shortValue!,
                        style: AppFonts.mulish.s15w600(
                          color: AppColors.fonts.grey,
                        ),
                      ),
                    ),
                  Expanded(child: Container()),
                  if (isIcon) AppImages.other.ArrowDownIcon(width:20,height: 20 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
