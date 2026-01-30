import 'package:flutter/material.dart';

class AppSelectionSheet extends StatelessWidget {
  final Widget? header;
  final Widget body;
  final Widget? bottom;

  const AppSelectionSheet({
    super.key,
    this.header,
    required this.body,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(28),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            if (header != null) ...[
              header!,
              const SizedBox(height: 12),
            ],
            Expanded(child: body),
            if (bottom != null) ...[
              const SizedBox(height: 12),
              bottom!,
              const SizedBox(height: 16),
            ],
          ],
        ),
      ),
    );
  }
}
