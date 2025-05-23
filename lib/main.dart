import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretium/src/feature/core/theme/theme.dart';
import 'package:pretium/src/feature/onboarding/presentation/views/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.medium,
    home:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: SplashScreen(),

      // home: const PostCard()
    );
  }
}
