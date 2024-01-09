import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/app.dart';

import '../controllers/init_controller.dart';

class InitialWrapper extends StatelessWidget {
  const InitialWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: InitializationController(),
      builder: (controller) => switch (controller.appState) {
        InitialAppState.loading => const MyApp(),
        InitialAppState.initialized => const ReadyApp(),
        InitialAppState.error => ErrorApp(
            error: controller.error,
            stackTrace: controller.stackTrace,
            onRefresh: controller.initializeApp,
          ),
      },
    );
  }
}
