enum RiderOnboardingType { book, tracking, safety }

class RiderOnboardingData {
  final String title;
  final String description;
  final RiderOnboardingType type;

  const RiderOnboardingData({
    required this.title,
    required this.description,
    required this.type,
  });
}