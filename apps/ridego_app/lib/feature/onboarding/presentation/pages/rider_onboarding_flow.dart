import 'package:flutter/material.dart';
import 'package:ridego_app/core/theme/app_color.dart';
import 'package:ridego_app/core/theme/app_text_style.dart';
import 'package:ridego_app/feature/onboarding/presentation/data/data_model.dart';
import 'package:ridego_app/feature/onboarding/presentation/widgets/rider_page_view.dart';

class RiderOnboardingScreen extends StatefulWidget {
  const RiderOnboardingScreen({super.key});

  @override
  State createState() => _RiderOnboardingScreenState();
}

class _RiderOnboardingScreenState extends State {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List _pages = const [
    RiderOnboardingData(
      title: 'Book a ride in seconds',
      description:
          'Set your destination, compare ride options, and get moving with just a few taps.',
      type: RiderOnboardingType.book,
    ),
    RiderOnboardingData(
      title: 'Track your driver live',
      description:
          'See your driver approach in real time, with clear arrival updates every step of the way.',
      type: RiderOnboardingType.tracking,
    ),
    RiderOnboardingData(
      title: 'Ride safely, rate your trip',
      description:
          'Share your trip, access safety tools, and help make every RideGo journey better.',
      type: RiderOnboardingType.safety,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = _currentIndex == _pages.length - 1;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 12),
              
              // Skip Button Top Bar
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Skip action
                  },
                  child: Text(
                    'Skip',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return RiderOnboardingPageView(data: _pages[index]);
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: _currentIndex == index ? 28 : 8,
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? AppColors.accentYellow
                          : AppColors.border,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    if (isLastPage) {
                      // Navigate to Login/Signup[cite: 7]
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentYellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isLastPage ? 'Get Started' : 'Next',
                        style: AppTextStyles.buttonYellow,
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward, size: 20, color: Colors.black),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}