import 'package:flutter/material.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/dashed_container.dart';

class GrahpicContainer extends StatelessWidget {
  const GrahpicContainer({super.key, required this.screenIcons});
  final IconData screenIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer Solid Circle Path
          Container(
            width: 210,
            height: 210,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellowAccent.withValues(alpha: 0.2),
              border: Border.all(color: Colors.yellow, width: 1.5),
            ),
          ),

          // Inner Teal Dashed Circle
          CustomPaint(
            size: const Size(160, 160),
            painter: DashedCirclePainter(
              color: const Color(0xFF00BFA5),
              strokeWidth: 2,
              gapLength: 8,
              dashLength: 8,
            ),
          ),

          // Central Yellow App Icon Box
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFFFD600),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Icon(screenIcons, color: Colors.black, size: 50),
            ),
          ),

          // Top-Left Teal Location Badge
          Positioned(
            top: 70,
            left: 25,
            child: Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                color: Color(0xFF00796B),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),

          // Bottom-Right White Car Badge
          Positioned(
            bottom: 50,
            right: 20,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.directions_car_outlined,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
