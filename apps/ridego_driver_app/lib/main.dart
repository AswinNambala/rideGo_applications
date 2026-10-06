import 'package:flutter/material.dart';
import 'package:ridego_core/core/theme/app_theme.dart';
import 'package:ridego_core/ridego_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
    );
  }
}