import 'package:flutter/material.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/route_painter.dart';

class MatchGraphic extends StatelessWidget {
  const MatchGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.shade800, width: 3),
      ),
      child: CustomPaint(
        painter: RoutePainter(),
      ),
    );
  }
}