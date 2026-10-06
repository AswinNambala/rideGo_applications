import 'package:flutter/material.dart';
import 'package:ridego_driver_app/feature/onboarding/data/data_model.dart';
import 'package:ridego_driver_app/feature/onboarding/widgets/onboarding_page_view.dart';

class DriverOnboardingFlow extends StatefulWidget {
  const DriverOnboardingFlow({super.key});

  @override
  State createState() => _DriverOnboardingFlowState();
}

class _DriverOnboardingFlowState extends State {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List _pages = const [
    OnboardingData(
      title: 'Drive on your schedule',
      description:
          'Go online when it works for you. RideGo keeps every shift flexible.',
      type: OnboardingType.schedule,
    ),
    OnboardingData(
      title: 'Get matched with\nnearby riders',
      description:
          'Smart matching reduces idle time and keeps pickups close.',
      type: OnboardingType.match,
    ),
    OnboardingData(
      title: 'Track your earnings',
      description:
          'See every trip, goal and payout in one clear view.',
      type: OnboardingType.earnings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = _currentIndex == _pages.length - 1;

    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            // Header: App Logo & Skip Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.near_me_rounded,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'RideGo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'DRIVER',
                            style: TextStyle(
                              color: Color(0xFFFF9500),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Skip Action
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // PageView Content
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
                  return OnboardingPageView(data: _pages[index]);
                },
              ),
            ),

            // Page Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 6,
                  width: _currentIndex == index ? 24 : 6,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? const Color(0xFFFF9500)
                        : Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Next / Get Started Action Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    if (isLastPage) {
                      // Navigate to Auth / Home
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9500),
                    foregroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isLastPage ? 'Get Started' : 'Next',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward, size: 18),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}