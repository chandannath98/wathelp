import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/homepage/views/homepage.dart';
import 'package:jobpilot/src/features/initialization/views/global_error_screen.dart';
import 'package:jobpilot/src/features/initialization/views/splash_screen.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      title: 'Jobpilot App',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ScaffoldUtilities.instance.key,
    );
  }
}

class ReadyApp extends StatelessWidget {
  const ReadyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      title: 'Jobpilot App',
      home: const Homepage(),
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      scaffoldMessengerKey: ScaffoldUtilities.instance.key,
      localizationsDelegates: context.localizationDelegates,
    );
  }
}

class ErrorApp extends StatelessWidget {
  const ErrorApp({
    super.key,
    this.error,
    this.stackTrace,
    required this.onRefresh,
  });

  final Object? error;
  final VoidCallback onRefresh;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      title: 'Jobpilot App',
      home: GlobalErrorPage(
        error: error,
        stackTrace: stackTrace,
        onRefreshCall: onRefresh,
      ),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ScaffoldUtilities.instance.key,
    );
  }
}
