import 'package:flutter/material.dart';
import 'package:ridego_app/feature/splash/presentation/pages/splash_screen.dart';
import 'package:ridego_core/core/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: SplashScreen(),
    );
  }
}