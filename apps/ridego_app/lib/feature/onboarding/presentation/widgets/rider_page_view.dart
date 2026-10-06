import 'package:flutter/material.dart';
import 'package:ridego_app/core/theme/app_color.dart';
import 'package:ridego_app/core/theme/app_text_style.dart';
import 'package:ridego_app/feature/onboarding/presentation/data/data_model.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/dashed_cricle_painter.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/route_icon_painter.dart';

class RiderOnboardingPageView extends StatelessWidget {
  final RiderOnboardingData data;

  const RiderOnboardingPageView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Hero Card Graphic[cite: 8]
        Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Outer Solid Circle[cite: 8]
              Container(
                width: 210,
                height: 210,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.withValues(alpha: 0.2),
                  border: Border.all(color: Colors.yellow, width: 1.5),
                ),
              ),

              // Inner Teal Dashed Circle[cite: 8]
              CustomPaint(
                size: const Size(160, 160),
                painter: DashedCirclePainter(
                  color: AppColors.primary,
                  strokeWidth: 2,
                  gapLength: 8,
                  dashLength: 8,
                ),
              ),

              // Central Yellow Box with Dynamic Icon[cite: 8]
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.accentYellow,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(child: _buildCenterIcon(data.type)),
              ),

              // Top-Left Location Badge[cite: 8]
              Positioned(
                top: 70,
                left: 35,
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    color: Color(0xFF00796B),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.textPrimary,
                    size: 22,
                  ),
                ),
              ),

              // Bottom-Right White Car Badge[cite: 8]
              Positioned(
                bottom: 50,
                right: 40,
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.textPrimary,
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
        ),

        const Spacer(),

        Text(
          data.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.displayMedium,
        ),

        const SizedBox(height: 12),

        Text(
          data.description,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMedium,
        ),

        const Spacer(),
      ],
    );
  }

  Widget _buildCenterIcon(RiderOnboardingType type) {
    switch (type) {
      case RiderOnboardingType.book:
        return CustomPaint(
          size: const Size(40, 40),
          painter: RouteIconPainter(),
        );
      case RiderOnboardingType.tracking:
        return const Icon(Icons.radar_rounded, color: Colors.black, size: 42);
      case RiderOnboardingType.safety:
        return const Icon(Icons.shield_outlined, color: Colors.black, size: 42);
    }
  }
}
