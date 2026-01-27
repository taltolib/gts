import 'package:flutter/material.dart';
import 'package:gts/shared/widget/app_selection_sheet.dart';

Future<void> customShowBottomSheetDialog(BuildContext context, String titleIsDialog, double? heightSizeDialog,) async {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return AppSelectionSheet(
        title: titleIsDialog,
        heightSize: heightSizeDialog,
      );
    },
  );
}
