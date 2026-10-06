import 'package:flutter/material.dart';
import 'package:ridego_core/core/theme/app_color.dart';
import 'package:ridego_core/core/theme/app_text_style.dart';

/// App-wide theme for the rideGo apps.
abstract final class AppTheme {
  static OutlineInputBorder _inputBorder(Color color, [double width = 1]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color, width: width),
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          onPrimary: AppColors.buttonText,
          secondary: AppColors.primary,
          surface: AppColors.surface,
          onSurface: AppColors.textPrimary,
          error: AppColors.textCancel,
        ),
        textTheme: const TextTheme(
          headlineLarge: AppTextStyles.headline,
          titleLarge: AppTextStyles.title,
          bodyLarge: AppTextStyles.body,
          bodyMedium: AppTextStyles.body,
          bodySmall: AppTextStyles.caption,
          labelLarge: AppTextStyles.button,
        ),
        iconTheme: const IconThemeData(color: AppColors.icon),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          iconTheme: IconThemeData(color: AppColors.icon),
          titleTextStyle: AppTextStyles.title,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.button,
            foregroundColor: AppColors.buttonText,
            textStyle: AppTextStyles.button,
            minimumSize: const Size.fromHeight(52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.textSpecial,
            textStyle: AppTextStyles.special,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surface,
          hintStyle: const TextStyle(color: AppColors.navInactive),
          labelStyle: const TextStyle(color: AppColors.textPrimary),
          prefixIconColor: AppColors.icon,
          suffixIconColor: AppColors.icon,
          border: _inputBorder(AppColors.border),
          enabledBorder: _inputBorder(AppColors.border),
          focusedBorder: _inputBorder(AppColors.border, 2),
          errorBorder: _inputBorder(AppColors.textCancel),
          focusedErrorBorder: _inputBorder(AppColors.textCancel, 2),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primary,
          selectionHandleColor: AppColors.primary,
        ),
        cardTheme: CardThemeData(
          color: AppColors.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppColors.border),
          ),
        ),
        dialogTheme: DialogThemeData(
          backgroundColor: AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColors.border),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.background,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.navInactive,
          type: BottomNavigationBarType.fixed,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.background,
          indicatorColor: Colors.transparent,
          iconTheme: WidgetStateProperty.resolveWith(
            (states) => IconThemeData(
              color: states.contains(WidgetState.selected)
                  ? AppColors.primary
                  : AppColors.navInactive,
            ),
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primary,
        ),
      );
}