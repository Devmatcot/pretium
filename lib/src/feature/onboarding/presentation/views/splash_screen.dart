import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretium/src/feature/core/route/app_routes.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/onboarding/presentation/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 3), () {
        pushToAndClearStack(context, OnboardingScreen());
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          'assets/images/applogo.jpeg',
          height: 150.h,
          width: 150.h,
        ),
      ),
    );
  }
}
