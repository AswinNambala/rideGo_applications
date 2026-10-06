import 'package:flutter/material.dart';
import 'package:ridego_driver_app/feature/onboarding/data/data_model.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/earning_graphic.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/match_graphic.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/schedule_graphic.dart';

class OnboardingPageView extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPageView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Illustration Hero Container
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: SizedBox(
                width: 220,
                height: 220,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer subtle circular aura
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withValues(alpha: 0.03),
                      ),
                    ),
                    // Specific Graphic Rendered per Screen Type
                    _buildIllustration(data.type),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          // Title
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 12),
          // Description
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              height: 1.4,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildIllustration(OnboardingType type) {
    switch (type) {
      case OnboardingType.schedule:
        return const ScheduleGraphic();
      case OnboardingType.match:
        return const MatchGraphic();
      case OnboardingType.earnings:
        return const EarningsGraphic();
    }
  }
}