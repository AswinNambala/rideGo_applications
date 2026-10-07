import 'package:flutter/material.dart';
import 'package:ridego_admin/core/theme/app_color.dart';
import 'package:ridego_admin/core/theme/app_text_style.dart';
import 'package:ridego_admin/core/widgets/custom_text_feild.dart';

class LoginAdminPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginAdminPage> createState() => _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final forumKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  'assets/rideGo logo splash.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 15),
              Text('RideGo Admin', style: AppTextStyles.headline),
              const SizedBox(height: 10),
              Text('Sign in your accounts', style: AppTextStyles.heading3),
              const SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text('Email Address', style: AppTextStyles.body)),
              const SizedBox(height: 5),
              CustomTextField(
                hintText: 'Enter Email Id',
                controller: emailCtrl,
                prefixIcon: Icons.mail_outline,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text('Password', style: AppTextStyles.body)),
              const SizedBox(height: 5),
              CustomTextField(
                hintText: 'Enter Your Password',
                controller: passwordCtrl,
                prefixIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
               child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
