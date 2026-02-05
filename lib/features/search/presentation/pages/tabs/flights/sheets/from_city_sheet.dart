import 'package:flutter/material.dart';
import 'package:gts/shared/widget/custom_text_field.dart';

class FromCitySheet extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  const FromCitySheet({super.key, this.onChanged});

  @override
  State<FromCitySheet> createState() => _FromCitySheetState();
}

class _FromCitySheetState extends State<FromCitySheet> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CustomTextField(controller:controller, onChanged: widget.onChanged ,);
  }
}
