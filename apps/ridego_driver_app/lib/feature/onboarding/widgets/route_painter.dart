import 'package:flutter/material.dart';

class RoutePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFF9500)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(size.width * 0.25, size.height * 0.7);
    path.cubicTo(
      size.width * 0.9, size.height * 0.7,
      size.width * 0.1, size.height * 0.3,
      size.width * 0.75, size.height * 0.3,
    );

    canvas.drawPath(path, paint);

    final dotPaint = Paint()..style = PaintingStyle.fill;

    // Start Dot
    dotPaint.color = const Color(0xFFFF9500);
    canvas.drawCircle(Offset(size.width * 0.25, size.height * 0.7), 6, dotPaint);

    // End Dot
    dotPaint.color = Colors.white;
    canvas.drawCircle(Offset(size.width * 0.75, size.height * 0.3), 6, dotPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}