import 'package:flutter/material.dart';
import 'package:ridego_app/feature/onboarding/presentation/pages/book_a_ride.dart';
import 'package:ridego_core/core/theme/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loading();
  }

  void loading() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (ctx) => const BookARide()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                'assets/rideGo logo splash.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
            Text('RideGo App', style: AppTextStyles.splashheadline),
            Text('Your city, one smooth ride away.', style: AppTextStyles.body),
          ],
        ),
      ),
    );
  }
}
