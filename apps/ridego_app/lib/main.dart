import 'package:flutter/material.dart';
import 'package:ridego_app/core/theme/app_theme.dart';
import 'package:ridego_app/feature/splash/presentation/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}