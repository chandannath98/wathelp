import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/generated/codegen_loader.g.dart';
import 'package:jobpilot/src/app.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';

import '../controllers/init_controller.dart';

class InitialWrapper extends StatelessWidget {
  const InitialWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      useOnlyLangCode: true,
      path: Assets.translationPath,
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      supportedLocales: const [
        Locale('en'),
        Locale('bn'),
        Locale('de'),
        Locale('ar'),
        Locale('es'),
        Locale('fr'),
        Locale('hi'),
        Locale('id'),
      ],
      child: GetBuilder(
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
      ),
    );
  }
}
