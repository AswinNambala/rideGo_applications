import 'dart:math' as math;

import 'package:flutter/material.dart';

class DashedCirclePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double gapLength;

  DashedCirclePainter({
    required this.color,
    this.strokeWidth = 2,
    this.dashLength = 6,
    this.gapLength = 6,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double radius = size.width / 2;
    final double circumference = 2 * math.pi * radius;
    final int dashCount = (circumference / (dashLength + gapLength)).floor();
    final double adjustedGap = (circumference - (dashCount * dashLength)) / dashCount;

    double currentAngle = 0;
    for (int i = 0; i < dashCount; i++) {
      final double dashAngle = dashLength / radius;
      final double gapAngle = adjustedGap / radius;

      canvas.drawArc(
        Rect.fromCircle(center: Offset(radius, radius), radius: radius),
        currentAngle,
        dashAngle,
        false,
        paint,
      );

      currentAngle += dashAngle + gapAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}