import 'package:flutter/material.dart';
import 'package:gts/core/theme/app_colors.dart';
import 'package:gts/shared/widget/check_painter.dart';

class TodoChoiceWidget extends StatefulWidget {
  final bool isChecked;
  final VoidCallback onChanged;
  const TodoChoiceWidget({super.key, required this.isChecked, required this.onChanged});

  @override
  State<TodoChoiceWidget> createState() => _TodoChoiceWidgetState();
}

class _TodoChoiceWidgetState extends State<TodoChoiceWidget>
    with SingleTickerProviderStateMixin {


  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    if (widget.isChecked) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(covariant TodoChoiceWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isChecked) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onChanged,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 130),
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          color: widget.isChecked
              ? AppColors.brandColors.blueAccent
              : AppColors.button.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: widget.isChecked
                ? AppColors.brandColors.blueAccent
                : AppColors.other.greyLightBorder,
          ),
        ),
        child: CustomPaint(
          painter: CheckPainter(_controller),
        ),
      ),
    );
  }
}

