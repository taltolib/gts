import 'package:flutter/material.dart';

class FromBodySheet extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  const FromBodySheet({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
