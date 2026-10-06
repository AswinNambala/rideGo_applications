import 'package:flutter/material.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/chart_painter.dart';

class EarningsGraphic extends StatelessWidget {
  const EarningsGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 180,
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.grey.shade800, width: 3),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '\$248',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: CustomPaint(
                  painter: ChartPainter(),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 60,
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              color: Color(0xFFFF9500),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}