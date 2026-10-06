import 'package:flutter/material.dart';
import 'package:ridego_core/core/theme/app_color.dart';

/// Reusable text styles for the rideGo apps.
abstract final class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle splashheadline = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.surface,
  );
   static const TextStyle onboardingheadline = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.buttonText,
  );

  /// Highlighted text such as offers, links, key labels.
  static const TextStyle special = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textSpecial,
  );

  static const TextStyle success = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textSuccess,
  );

  static const TextStyle cancel = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textCancel,
  );

  /// ETA, ride time and distance.
  static const TextStyle timeDistance = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.textTimeDistance,
  );
}
