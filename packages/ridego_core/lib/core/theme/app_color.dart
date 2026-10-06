import 'package:flutter/material.dart';

/// Central color palette for the rideGo apps.
abstract final class AppColors {
  // Base
  static const Color background = Color(0xFF000000);
  static const Color surface = Color(0xFF000000); // containers
  static const Color primary = Color(0xFFFFD60A); // yellow

  // Text
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSpecial = primary;
  static const Color textSuccess = Color(0xFF2ECC71);
  static const Color textCancel = Color(0xFFFF3B30);
  static const Color textTimeDistance = primary;

  // Buttons
  static const Color button = primary;
  static const Color buttonText = Color(0xFF000000);

  // Icons & navigation
  static const Color icon = primary;
  static const Color navInactive = Color(0xFF9E9E9E);

  // Borders (containers, text fields)
  static const Color border = primary;

  // Google Map
  static const Color mapRoute = primary;
  static const Color mapCurrentLocation = primary;

  // Splash
  static const Color splashBackground = Color(0xFF00A859);
}