import 'package:flutter/material.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/grahpic_container.dart';
import 'package:ridego_core/core/theme/app_text_style.dart';

class SafetyAndRating extends StatelessWidget {
  const SafetyAndRating({super.key});

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
                screenIcons: Icons.shield_outlined,
              ),
              const SizedBox(height: 40),
              Text(
                'Ride Safely, rate your trip',
                style: AppTextStyles.onboardingheadline,
              ),
              const SizedBox(height: 5),
              Text(
                'Share your trip, access safety tools, and help make every RideGo journey better.',
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
                      color: Color(0xFF333333),
                      shape: BoxShape.circle,
                      
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
                  const SizedBox(width: 8),
                  Container(
                    width: 28,
                    height: 8,
                    decoration:  BoxDecoration(
                      color:  Color(0xFFFFD600),
                      borderRadius: BorderRadius.circular(4),
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
                    // Next page logic
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
                        'Get Started',
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
