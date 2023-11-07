import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/initialization/views/splash_screen.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      title: 'Jobpilot App',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
