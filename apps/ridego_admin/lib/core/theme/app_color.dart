import 'package:flutter/material.dart';

/// Centralized color palette for RideGo Admin Web Portal
class AppColors {
  AppColors._();

  // Primary & Brand Colors
  static const Color primary = Color(0xFF2563EB); 
  static const Color primaryHover = Color(0xFF1D4ED8);
  static const Color primaryLight = Color(0xFFEFF6FF);

  // Sidebar / Dark Elements
  static const Color sidebarBackground = Color(0xFF1E293B); 
  static const Color sidebarActiveItem = Color(0xFF334155); 
  static const Color sidebarText = Color(0xFF94A3B8);
  static const Color sidebarActiveText = Color(0xFFFFFFFF); 

  // Neutral Backgrounds & Cards
  static const Color background = Color(0xFFF8FAFC);
  static const Color cardBackground = Color(0xFFFFFFFF); 
  static const Color inputBackground = Color(0xFFF1F5F9);

  // Borders & Dividers
  static const Color border = Color(0xFFE2E8F0);
  static const Color divider = Color(0xFFF1F5F9);

  // Typography & Content Colors
  static const Color textPrimary = Color(0xFF0F172A); 
  static const Color textSecondary = Color(0xFF64748B); 
  static const Color textMuted = Color(0xFF94A3B8); 

  // Status & Feedback Colors
  static const Color success = Color(0xFF10B981); 
  static const Color successLight = Color(0xFFECFDF5);
  
  static const Color warning = Color(0xFFF59E0B); 
  static const Color warningLight = Color(0xFFFFFBEB);

  static const Color error = Color(0xFFEF4444); 
  static const Color errorLight = Color(0xFFFEF2F2);
}