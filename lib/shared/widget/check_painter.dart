import 'dart:ui';

import 'package:flutter/material.dart';

class CheckPainter extends CustomPainter {
  final Animation<double> progress;

  CheckPainter(this.progress) : super(repaint: progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(size.width * 0.2, size.height * 0.55);
    path.lineTo(size.width * 0.45, size.height * 0.75);
    path.lineTo(size.width * 0.8, size.height * 0.3);

    final metric = path.computeMetrics().first;
    final extract = metric.extractPath(0, metric.length * progress.value);

    canvas.drawPath(extract, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
