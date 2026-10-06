import 'package:flutter/material.dart';

class RouteIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fillPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 0.25, size.height * 0.75);
    path.cubicTo(
      size.width * 0.8, size.height * 0.75,
      size.width * 0.2, size.height * 0.25,
      size.width * 0.75, size.height * 0.25,
    );

    canvas.drawPath(path, paint);
    canvas.drawCircle(Offset(size.width * 0.25, size.height * 0.75), 4, fillPaint);
    canvas.drawCircle(Offset(size.width * 0.75, size.height * 0.25), 4, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}