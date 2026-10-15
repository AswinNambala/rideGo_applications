enum OnboardingType { schedule, match, earnings }

class OnboardingData {
  final String title;
  final String description;
  final OnboardingType type;

  const OnboardingData({
    required this.title,
    required this.description,
    required this.type,
  });
}