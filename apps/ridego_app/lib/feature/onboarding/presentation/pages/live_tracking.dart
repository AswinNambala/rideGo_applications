import 'package:flutter/material.dart';
import 'package:ridego_app/feature/onboarding/presentation/pages/safety_and_rating.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/grahpic_container.dart';
import 'package:ridego_core/core/theme/app_text_style.dart';

class LiveTracking extends StatelessWidget {
  const LiveTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Skip', style: AppTextStyles.body),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GrahpicContainer(
                screenIcons: Icons.radar_rounded,
              ),
              const SizedBox(height: 40),
              Text(
                'Track your driver live',
                style: AppTextStyles.onboardingheadline,
              ),
              const SizedBox(height: 5),
              Text(
                'Set your driver approach in real time, with clear arrival updates every step of the way.',
                style: AppTextStyles.body,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      shape: BoxShape.circle,
                     
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 28,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD600),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 400,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (ctx) => SafetyAndRating()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD600),
                    foregroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 20, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
